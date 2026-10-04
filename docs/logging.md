# Logging

- [Log levels](#log-levels)
- [Changing the log level](#changing-the-log-level)
- [Logging to a file](#logging-to-a-file)

---

When a request is failing or behaving unexpectedly, the quickest way to see
what Paws is actually sending to AWS (and receiving back) is to turn up its
log level.

## Log levels

Paws has 5 log levels. The default is `2` (`WARNING`): only warnings and
errors are shown.

| Level | Name    | Shows |
|-------|---------|-------|
| `1`   | ERROR   | Errors only |
| `2`   | WARNING | Warnings and errors (default) |
| `3`   | INFO    | General request/response info |
| `4`   | DEBUG   | The above, plus the HTTP headers sent and received |
| `5`   | TRACE   | The above, plus low-level connection/TLS detail |

To see the headers of the request Paws actually sent (and the response it
got back), use level `4` or `5`.

## Changing the log level

Set the `paws.log_level` R option directly, without going through
`paws.common`:

```r
options("paws.log_level" = 4L)
```

Or set it before R starts, via the `PAWS_LOG_LEVEL` environment variable.

Or use `paws.common::paws_config_log()`:

```r
library(paws)

paws.common::paws_config_log(level = 4L)

svc <- s3(region = "us-west-2")
svc$list_buckets()

# reset to the default level
paws.common::paws_config_log()
```

## Logging to a file

By default, log output goes to the console. Pass `file` to write it to a
file instead:

```r
paws.common::paws_config_log(level = 4L, file = "paws.log")
```

This can also be set via `options("paws.log_file" = "paws.log")` or the
`PAWS_LOG_FILE` environment variable.
