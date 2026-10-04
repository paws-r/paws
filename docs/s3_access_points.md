# S3 Access Points, Object Lambda & Outposts

- [Access points](#access-points)
- [S3 Object Lambda access points](#s3-object-lambda-access-points)
- [S3 on Outposts](#s3-on-outposts)

---

Instead of a bucket name, you can pass the ARN of an
[S3 access point](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html),
[S3 Object Lambda access point](https://docs.aws.amazon.com/AmazonS3/latest/userguide/transforming-objects.html),
or [S3 on Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html)
access point as the `Bucket` parameter of any S3 operation (and as
`CopySource` for `copy_object()`). Paws detects the ARN automatically and
resolves the correct endpoint, signing service, and signing region for
it — no extra configuration is required.

## Access points

```r
library(paws)

svc <- s3(region = "us-west-2")

svc$get_object(
    Bucket = "arn:aws:s3:us-west-2:123456789012:accesspoint/my-access-point",
    Key = "myfile.txt"
)
```

## S3 Object Lambda access points

```r
svc$get_object(
    Bucket = "arn:aws:s3-object-lambda:us-west-2:123456789012:accesspoint/my-olap",
    Key = "myfile.txt"
)
```

## S3 on Outposts

Outposts access point ARNs also include the outpost ID:

```r
svc$get_object(
    Bucket = "arn:aws:s3-outposts:us-west-2:123456789012:outpost/op-01234567890123456/accesspoint/my-outpost-ap",
    Key = "myfile.txt"
)
```

The signing region and service used for the request (`s3`, `s3-object-lambda`,
or `s3-outposts`) are taken from the ARN itself, so these calls work
regardless of the region the service client was created with.
