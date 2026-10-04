# Configuration

- [Connection timeout](#connection-timeout)
- [Closing connections](#closing-connections)
- [STS regional endpoints](#sts-regional-endpoints)

---

These are additional service settings beyond credentials and region; see
[credentials.md](credentials.md) for those, and [retries.md](retries.md) for
`max_retries`.

## Connection timeout

`connect_timeout` controls how long, in seconds, Paws waits for a connection
to be established before raising a timeout error. It does not limit the time
taken by the rest of the request once a connection is open. The default is
60 seconds.

```r
library(paws)

svc <- s3(config(connect_timeout = 5))
```

## Closing connections

By default, Paws lets the underlying HTTP library reuse connections between
requests. Set `close_connection` to `TRUE` to send a `Connection: close`
header, forcing the connection to be closed after each request instead of
reused.

```r
svc <- s3(config(close_connection = TRUE))
```

## STS regional endpoints

By default, AWS STS requests (e.g. `assume_role()`) are sent to STS's global,
legacy endpoint in `us-east-1`, regardless of the region configured for the
service. Set `sts_regional_endpoint` to `"regional"` to send requests to the
STS endpoint for the configured region instead, signing with that region
rather than `us-east-1`. Set it to `"legacy"` to force the original global
endpoint. See AWS's
[STS regionalized endpoints guide](https://docs.aws.amazon.com/sdkref/latest/guide/feature-sts-regionalized-endpoints.html)
for why this matters (e.g. for opt-in regions, which STS only supports via
their regional endpoint).

```r
svc <- sts(config(region = "ap-southeast-3", sts_regional_endpoint = "regional"))
```

This can also be set via the `AWS_STS_REGIONAL_ENDPOINTS` environment
variable, or `sts_regional_endpoint` in the AWS config file, both taking the
same `"legacy"`/`"regional"` values.
