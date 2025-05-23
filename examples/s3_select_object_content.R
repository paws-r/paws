# This example shows how to get data from S3 using a SQL query and the
# select_object_content operation. For more information, see
# https://docs.aws.amazon.com/AmazonS3/latest/API/API_SelectObjectContent.html.

library(paws)

client <- s3()

bkt = "paws-dummy-bucket"
key = "dummy.csv"
exp = "SELECT * FROM s3object s"

resp <- client$select_object_content(
  Bucket = bkt,
  Key = key,
  Expression = exp,
  ExpressionType = "SQL",
  InputSerialization = list(
    'CSV' = list(
      'RecordDelimiter' = '\n',
      'FieldDelimiter' = ','
    )
  ),
  OutputSerialization = list(
    'CSV' = list('RecordDelimiter' = '\n', 'FieldDelimiter' = ',')
  )
)

# The response is a stream of records. We need to read the stream
# Please check out the documentation for more information:
# https://www.paws-r-sdk.com/docs/s3_select_object_content/
result <- resp$Payload(\(chunk) chunk$Records$Payload)

# Remove empty elements
buffer <- unlist(result[lengths(result) > 0])

# Size of the buffer
length(buffer)
#> [1] 305205

# Methods to parse the buffer
bench::mark(
  base = read.csv(text = rawToChar(buffer)),
  iotools = iotools::read.csv.raw(buffer),
  readr = readr::read_csv(buffer),
  arrow = arrow::read_csv_arrow(buffer),
  check = F
)

#>   <bch:expr> <bch:tm> <bch:tm>     <dbl> <bch:byt>    <dbl>
#> 1 base         4.52ms   5.01ms     200.     1.14MB     4.12
#> 2 iotools    971.08µs   1.06ms     898.   310.19KB     4.07
#> 3 readr       12.97ms  14.41ms      68.5    8.32MB    11.8
#> 4 arrow        1.82ms   2.02ms     492.    20.59MB     8.56
