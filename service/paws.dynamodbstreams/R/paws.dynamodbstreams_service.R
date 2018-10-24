service <- function () 
{
    cfg <- client_config("streams.dynamodb", list(`*` = "streams.dynamodb.{region}.amazonaws.com", 
        `cn-*` = "streams.dynamodb.{region}.amazonaws.com.cn"))
    client_info <- ClientInfo(service_name = "streams.dynamodb", 
        service_id = "DynamoDB Streams", api_version = "2012-08-10", 
        signing_name = "dynamodb", signing_region = cfg$signing_region, 
        endpoint = cfg$endpoint, json_version = "1.0", target_prefix = "DynamoDBStreams_20120810")
    handlers <- handlers(build = jsonrpc_build, sign = v4_sign_request_handler, 
        unmarshal = jsonrpc_unmarshal, unmarshal_meta = jsonrpc_unmarshal_meta, 
        unmarshal_error = jsonrpc_unmarshal_error)
    svc <- Client(config = cfg$config, client_info = client_info, 
        handlers = handlers)
    return(svc)
}
