library(aws.dynamodb)

#-------------------------------------------------------------------------------

# Test the example function.
(a <- aws.dynamodb::list_tables())

(b <- aws.dynamodb::list_tables(Limit = 2))

(c <- aws.dynamodb::describe_limits())

(d <- aws.dynamodb::create_table(
  AttributeDefinitions=list(
    list(
      'AttributeName' = 'Artist',
      'AttributeType' = 'S'
    ),
    list(
      'AttributeName' = 'SongTitle',
      'AttributeType' = 'S'
    )
  ),
  KeySchema=list(
    list(
      'AttributeName' = 'Artist',
      'KeyType' = 'HASH'
    ),
    list(
      'AttributeName' = 'SongTitle',
      'KeyType' = 'RANGE'
    )
  ),
  ProvisionedThroughput=list(
    'ReadCapacityUnits' = 5,
    'WriteCapacityUnits' = 5
  ),
  TableName='Music'
))
