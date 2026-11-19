## Submission
This release adds adaptive retries and a retry quota, parallel multipart S3 transfers, `CRC64NVME` checksum support, and S3 bucket-region caching. It also fixes request retries, JSON-protocol throttling detection, `populate()` with environments, and secret redaction in debug logs.

## Test environments

GitHub Actions:

* Ubuntu: R-devel, R-latest, R-oldrel-1 to oldrel-4
* macOS: R-latest
* Windows: R-devel, R-latest, R-oldrel-4

R-hub (R-devel): linux, windows, macos-arm64, m1-san

## R CMD check results

There were no ERRORs, WARNINGs or NOTEs.

## Downstream dependencies

Ran R CMD check on all downstream dependencies. All pass.
