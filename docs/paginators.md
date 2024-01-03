# Paginators

> Some AWS operations return results that are incomplete and require subsequent requests in order to attain the entire result set. The process of sending subsequent requests to continue where a previous request left off is called pagination. For example, the list_objects operation of Amazon S3 returns up to 1000 objects at a time, and you must send subsequent requests with the appropriate Marker in order to retrieve the next page of results.
(https://boto3.amazonaws.com/v1/documentation/api/latest/guide/paginators.html#paginators)


As of `paws v0.4.0+` paginators are supported within `paws`.

## Basic Usage

A paginator can be applied to a `paws` operation. `paws` support 3 different methods of paginator (`paginate`, `paginate_lapply`, `paginate_sapply`). 

### `paginate`:
Return all response from the `paws` operation.

```r
library(paws)

svc <- s3(region = "us-west-2")

results <- paginate(svc$list_objects(Bucket = "my-bucket"))
```

### `paginate_lapply`:
Allows you to apply a function on each returning response.
```r
library(paws)

svc <- s3(region = "us-west-2")

results <- paginate_lapply(svc$list_objects(Bucket = "my-bucket"), \(resp) resp$Contents)
```

### `paginate_sapply`:
Allows you to apply a function on each returning response, however the final result is simplified similar to `base::sapply`.
```r
library(paws)

svc <- s3(region = "us-west-2")

results <- paginate_sapply(
    svc$list_objects(Bucket = "my-bucket"),
    \(resp) resp$Contents,
    simplify = T
)
```

## Customizing page Iterators

You can modify the operation by

* `MaxItems:` 
    Limits the maximum number of total returned items returned while paginating.
* `StartingToken:`
    Can be used to modify the starting marker or token of a paginator. This argument if useful for resuming pagination from a previous token or starting pagination at a known position.
* `PageSize:`
    Controls the number of items returned per page of each result.


### `paginate`
```r
library(paws)

svc <- s3(region = "us-west-2")

results <- paginate(svc$list_objects(Bucket = "my-bucket"), MaxItems = 10)
```

#### `paginate_lapply`
```r
library(paws)

svc <- s3(region = "us-west-2")

results <- paginate_lapply(svc$list_objects(Bucket = "my-bucket"), \(page) page$Contents)
```

#### `paginate_sapply`
```r
library(paws)

svc <- s3(region = "us-west-2")

results <- paginate_lapply(svc$list_objects(Bucket = "my-bucket"), \(page) page$Contents)
```

## Piping:

`paws` paginator support R native piping `|>`. However we currently don't support magrittr piping `%>%`.

```r
library(paws)
library(magrittr)

svc <- s3(region = "us-west-2")

# Will Work
results <- svc$list_objects(Bucket = "my-bucket") |> paginate(MaxItems = 10)

# Will error:
results <- svc$list_objects(Bucket = "my-bucket") %>% paginate(MaxItems = 10)
```


## Filtering results:

You can filter the paginator results by limiting the response for the paws operation. For example `list_objects` accepts `Prefix` parameter to filter page server-side before returning to `R`.

```r
library(paws)

svc <- s3(region = "us-west-2")

kwargs <- list(
    Bucket='my-bucket',
    Prefix='foo/baz'
)
result <- do.call(svc$list_objects, kwargs) |> paginate_lapply(\(page) page$Contents)
```

## Stop on Same Token:

Since paws.common 0.7.0 paginate works with AWS APIs that always return a token i.e. `cloudwatchlogs`. To handle these type of apis you can see the parameter `StopOnSameToken = TRUE`

```r
library(paws)

client <- cloudwatchlogs()

pages <- paginate(
  client$get_log_events(
    logGroupName = "/aws/sagemaker/NotebookInstances",
    logStreamName = "paws-demo/jupyter.log",
    startFromHead = TRUE
  ),
  StopOnSameToken = TRUE
)
```
This aligns with AWS SDK JS V3 implementation ([aws-sdk-js-v3:v3.78.0](https://github.com/aws/aws-sdk-js-v3/releases/tag/v3.78.0)).
