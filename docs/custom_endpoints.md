# Custom Endpoints

- [Pointing a service at a custom endpoint](#pointing-a-service-at-a-custom-endpoint)
- [S3-compatible services (MinIO, LocalStack, Ceph, etc.)](#s3-compatible-services-minio-localstack-ceph-etc)
- [Setting the endpoint via environment variable instead](#setting-the-endpoint-via-environment-variable-instead)

---

By default, Paws resolves each service's endpoint from the configured
region (e.g. `s3.us-west-2.amazonaws.com`). To send requests somewhere else
entirely — a local emulator, an S3-compatible object store, or a VPC
endpoint — set `endpoint` in the service config.

## Pointing a service at a custom endpoint

```r
library(paws)

svc <- dynamodb(config(endpoint = "http://localhost:8000", region = "us-west-2"))
```

Requests are still signed with SigV4 using the configured `region` and
credentials, but sent to the given URL instead of the real AWS endpoint.

## S3-compatible services (MinIO, LocalStack, Ceph, etc.)

S3 normally addresses a bucket using virtual-hosted-style URLs
(`https://my-bucket.s3.region.amazonaws.com/key`). Most S3-compatible
services and local emulators don't have DNS set up for arbitrary bucket
subdomains, so you also need to force path-style addressing
(`http://endpoint/my-bucket/key`) with `s3_force_path_style`:

```r
svc <- s3(
    config(
        endpoint = "http://localhost:9000",
        region = "us-east-1",
        s3_force_path_style = TRUE
    )
)

svc$list_objects(Bucket = "my-bucket")
```

Without `s3_force_path_style = TRUE`, Paws will try to send requests to
`my-bucket.localhost`, which won't resolve.

## Setting the endpoint via environment variable instead

Rather than passing `endpoint` to every service you create, you can set a
global or per-service endpoint via `AWS_ENDPOINT_URL` /
`AWS_ENDPOINT_URL_<SERVICE>`; see
[credentials.md](credentials.md#environment-variables). Endpoints set this
way already default to path-style addressing for S3, so
`s3_force_path_style` isn't required — set `s3_virtual_address = TRUE`
instead if your target does support virtual-hosted-style addressing and you
want to use it.
