# DynamoDB examples

# Create a DynamoDB table.
response <- paws.dynamodb::create_table(
  AttributeDefinitions = list(
    list(
      "AttributeName" = "Artist",
      "AttributeType" = "S"
    ),
    list(
      "AttributeName" = "SongTitle",
      "AttributeType" = "S"
    )
  ),
  KeySchema = list(
    list(
      "AttributeName" = "Artist",
      "KeyType" = "HASH"
    ),
    list(
      "AttributeName" = "SongTitle",
      "KeyType" = "RANGE"
    )
  ),
  ProvisionedThroughput = list(
    "ReadCapacityUnits" = 5,
    "WriteCapacityUnits" = 5
  ),
  TableName = "Music"
)

# List our DynamoDB tables.
tables <- paws.dynamodb::list_tables()

# Delete the table just created.
paws.dynamodb::delete_table("Music")
