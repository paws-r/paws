# Simple Queue Service examples

# Create a queue.
sqs <- paws.sqs::create_queue(
  QueueName = "ExampleQueue"
)

# Add a message to the queue.
paws.sqs::send_message(
  QueueUrl = sqs$QueueUrl,
  MessageBody = "foo"
)

# Get the queue's attributes.
paws.sqs::get_queue_attributes(
  QueueUrl = sqs$QueueUrl,
  AttributeNames = "All"
)

# Get the next message from the queue.
msg <- paws.sqs::receive_message(
  QueueUrl = sqs$QueueUrl
)

# Delete the message.
paws.sqs::delete_message(
  QueueUrl = sqs$QueueUrl,
  ReceiptHandle = msg$Messages[1]$ReceiptHandle
)

# Delete the queue.
paws.sqs::delete_queue(
  QueueUrl = sqs$QueueUrl
)
