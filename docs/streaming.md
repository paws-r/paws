# Streaming

As of `paws v-0.8.0+` streaming is supported in `paws`.


## Basic usage:

Example taken from: https://docs.aws.amazon.com/code-library/latest/ug/python_3_bedrock-runtime_code_examples.html


### Internal function:

Paws allows for a function to be passed to the returning stream for processing.

```r
library(paws)

client <- bedrockruntime()

# Set the model ID, e.g., Titan Text Premier.
model_id <- "amazon.titan-text-premier-v1:0"

# Start a conversation with the user message.
user_message <- "Describe the purpose of a 'hello world' program in one line."
conversation <- list(
    list(
        role = "user",
        content = list(list(text= user_message)),
    )
)

resp <- client.converse_stream(
  modelId=model_id,
  messages=conversation,
  inferenceConfig=list(maxTokens = 512, temperature = 0.5, topP = 0.9)
)

resp$stream(\(chunk) chunk$contentBlockDelta$delta$text)
```

### paws_connection:

`paws` allows for the raw connection to be retrieved. The connection is a child class of `httr2::httr2_response` class.
This allows paws_connection to be handle both a paws parser or httr2 stream parser.

```r
library(paws)

client <- bedrockruntime()

# Set the model ID, e.g., Titan Text Premier.
model_id <- "amazon.titan-text-premier-v1:0"

# Start a conversation with the user message.
user_message <- "Describe the purpose of a 'hello world' program in one line."
conversation <- list(
    list(
        role = "user",
        content = list(list(text= user_message)),
    )
)

resp <- client.converse_stream(
  modelId=model_id,
  messages=conversation,
  inferenceConfig=list(maxTokens = 512, temperature = 0.5, topP = 0.9)
)

con <- resp$stream(.connection = TRUE)

while(!is.null(chunk <- paws_stream_parser(con))) {
  print(chunk$contentBlockDelta$delta$text)
}
```

Note: the paws_stream_parser return the stream in the response syntax. In this case please check https://paws-r.github.io/docs/bedrockruntime_converse_stream/

For full flexibility you can use [httr2::resp_stream_aws](https://httr2.r-lib.org/reference/req_perform_stream.html?search-input=resp_stream_aws) to get the raw response from AWS.

```r
library(paws)

client <- bedrockruntime()

# Set the model ID, e.g., Titan Text Premier.
model_id <- "amazon.titan-text-premier-v1:0"

# Start a conversation with the user message.
user_message <- "Describe the purpose of a 'hello world' program in one line."
conversation <- list(
    list(
        role = "user",
        content = list(list(text= user_message)),
    )
)

resp <- client.converse_stream(
  modelId=model_id,
  messages=conversation,
  inferenceConfig=list(maxTokens = 512, temperature = 0.5, topP = 0.9)
)

con <- resp$stream(.connection = TRUE)
repeat{
  event <- resp_stream_aws(con)
  if (is.null(event)) {
    close(con)
    break
  }
  
  str(event)
}
```
