service <- function () 
{
    cfg <- client_config("mturk-requester", list(`*` = "mturk-requester.{region}.amazonaws.com", 
        `cn-*` = "mturk-requester.{region}.amazonaws.com.cn"))
    client_info <- ClientInfo(service_name = "mturk-requester", 
        service_id = "MTurk", api_version = "2017-01-17", signing_name = cfg$signing_name, 
        signing_region = cfg$signing_region, endpoint = cfg$endpoint, 
        json_version = "1.1", target_prefix = "MTurkRequesterServiceV20170117")
    handlers <- handlers(build = jsonrpc_build, sign = v4_sign_request_handler, 
        unmarshal = jsonrpc_unmarshal, unmarshal_meta = jsonrpc_unmarshal_meta, 
        unmarshal_error = jsonrpc_unmarshal_error)
    svc <- Client(config = cfg$config, client_info = client_info, 
        handlers = handlers)
    return(svc)
}
