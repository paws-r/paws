# Flexible Checksums

- [Default behavior](#default-behavior)
- [Choosing an algorithm](#choosing-an-algorithm)
- [Reading the checksum back](#reading-the-checksum-back)
- [Restoring the old Content-MD5 behavior](#restoring-the-old-content-md5-behavior)

---

As of `paws.common >= 0.9.0`, Paws supports AWS's flexible checksum feature
for S3 and other services whose operations advertise an `httpChecksum` trait,
aligning with the default behavior of boto3 and the other AWS SDKs.

## Default behavior

Operations that support a request checksum (e.g. `PutObject`, `UploadPart`)
now have one computed and attached automatically, even if you don't pass
`ChecksumAlgorithm` yourself. The default algorithm is `CRC32`.

```r
library(paws)

svc <- s3(region = "us-west-2")

# A CRC32 checksum is computed and sent automatically.
svc$put_object(Bucket = "my-bucket", Key = "file.txt", Body = "hello")
```

## Choosing an algorithm

Pass `ChecksumAlgorithm` on supporting operations to choose a different
algorithm. Supported values are `CRC32`, `CRC32C`, `SHA1`, `SHA256`, `SHA512`,
`MD5`, `XXHASH64`, `XXHASH3`, and `XXHASH128`.

```r
svc$put_object(
    Bucket = "my-bucket",
    Key = "file.txt",
    Body = "hello",
    ChecksumAlgorithm = "SHA256"
)
```

`CRC64NVME` is not supported, since it requires AWS's CRT, which Paws has no
equivalent of.

## Reading the checksum back

To have a checksum returned and validated on download, set `ChecksumMode =
"ENABLED"` on operations that support it (e.g. `GetObject`). The checksum is
returned in the matching typed field of the response, e.g. `ChecksumSHA256`
or `ChecksumCRC32`, not as a raw header.

```r
resp <- svc$get_object(Bucket = "my-bucket", Key = "file.txt", ChecksumMode = "ENABLED")
resp$ChecksumSHA256
```

## Restoring the old Content-MD5 behavior

Before `paws.common 0.9.0`, Paws only ever sent a `Content-MD5` header and
never a flexible checksum. To restore that behavior, set
`request_checksum_calculation` to `"when_required"` in the service config
(the default is `"when_supported"`). This is a plain config list entry, not
one of the `config()`/`credentials()` helper function's named arguments.

```r
svc <- s3(config = list(request_checksum_calculation = "when_required"))

# Sends Content-MD5 only; no x-amz-checksum-* header is added.
svc$put_object(Bucket = "my-bucket", Key = "file.txt", Body = "hello")
```

A flexible checksum and `Content-MD5` are mutually exclusive on a given
request — whenever a flexible checksum is resolved, `Content-MD5` is skipped.
