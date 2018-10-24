service <- function () 
{
    cfg <- client_config("sagemaker", list(`*` = "sagemaker.{region}.amazonaws.com", 
        `cn-*` = "sagemaker.{region}.amazonaws.com.cn"))
    client_info <- ClientInfo(service_name = "sagemaker", service_id = "SageMaker", 
        api_version = "2017-07-24", signing_name = "sagemaker", 
        signing_region = cfg$signing_region, endpoint = cfg$endpoint, 
        json_version = "1.1", target_prefix = "SageMaker")
    handlers <- handlers(build = jsonrpc_build, sign = v4_sign_request_handler, 
        unmarshal = jsonrpc_unmarshal, unmarshal_meta = jsonrpc_unmarshal_meta, 
        unmarshal_error = jsonrpc_unmarshal_error)
    svc <- Client(config = cfg$config, client_info = client_info, 
        handlers = handlers)
    return(svc)
}
