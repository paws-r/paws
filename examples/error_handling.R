# Error Handling Examples

library(paws)
s3_svc <- s3()

# Attempt a request that will certainly fail and catch the error object.
b1 <- tryCatch(s3_svc$list_objects_v2(Bucket = "not_a_bucket_alskfj", MaxKeys =2), error = function(e) e)
b1$message
# > "NoSuchBucket (HTTP 404). The specified bucket does not exist"

# Look at the details of the error
attributes(b1)

# Output:
#> $names
#> [1] "message"
#> $class
#> [1] "http_404"   "http_400"   "http_error" "error"      "condition"
#> $status_code
#> [1] 404
#>
#> $error_response
#> $error_response$Code
#> [1] "NoSuchBucket"
#> $error_response$Message
#> [1] "The specified bucket does not exist"
#> $error_response$BucketName
#> [1] "not_a_bucket_alskfj"
#> $error_response$RequestId
#> [1] "3568524444199D04"
#> $error_response$HostId
#> [1] "P2te81nv444441hoXsdKxUEFzwhB+J4444499APIKGLKpn8X/LaOioBS/a229v93uYOMXkFehIc="

# Retry after a 1 second wait on 50X errors:
response <- NULL
attempt_count <- 0
while (is.null(response) | inherits(response, "http_500") | attempt_count < 3){
  attempt_count <- attempt_count + 1
  response <- tryCatch(s3_svc$list_objects_v2(Bucket = "this-is-a-real-bucket", MaxKeys =2), error = function(e) e)
  if(inherits(response, "http_500") & attempt_count < 3){
    print(paste0("Request failed with 500 error and message: ", response$message))
    print("Retrying after 1 second sleep")
    Sys.sleep(1)
  } else if (inherits(response, "error")){
    # Re-raise the error object on non-500 error or 500 error with maxed retries
    stop(response)
  }
}
