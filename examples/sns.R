# Simple Notification Service examples

# Create a topic to which we can send notifications.
topic <- paws.sns::create_topic("ExampleTopic")

# List our topics.
paws.sns::list_topics()

# Subscribe an email address to the topic.
# You'll have to confirm the subscription to receive emails.
paws.sns::subscribe(
  TopicArn = topic$TopicArn,
  Protocol = "email",
  Endpoint = "user@example.com"
)

# Publish a message to the topic.
paws.sns::publish(
  Message = "Hello world!",
  TopicArn = topic$TopicArn
)

# Delete the example topic.
paws.sns::delete_topic(topic$TopicArn)
