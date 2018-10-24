#' After you deploy a model into production using Amazon SageMaker hosting services, your client applications use this API to get inferences from the model hosted at the specified endpoint
#'
#' After you deploy a model into production using Amazon SageMaker hosting services, your client applications use this API to get inferences from the model hosted at the specified endpoint.
#' 
#' For an overview of Amazon SageMaker, see [How It Works](http://docs.aws.amazon.com/sagemaker/latest/dg/how-it-works.html).
#' 
#' Amazon SageMaker strips all POST headers except those supported by the API. Amazon SageMaker might add additional headers. You should not rely on the behavior of headers outside those enumerated in the request syntax.
#' 
#' Cals to `InvokeEndpoint` are authenticated by using AWS Signature Version 4. For information, see [Authenticating Requests (AWS Signature Version 4)](http://docs.aws.amazon.com/AmazonS3/latest/API/sig-v4-authenticating-requests.html) in the *Amazon S3 API Reference*.
#' 
#' Endpoints are scoped to an individual account, and are not public. The URL does not contain the account ID, but Amazon SageMaker determines the account ID from the authentication token that is supplied by the caller.
#'
#' @param EndpointName The name of the endpoint that you specified when you created the endpoint using the [CreateEndpoint](http://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateEndpoint.html) API.
#' @param Body Provides input data, in the format specified in the `ContentType` request header. Amazon SageMaker passes all of the data in the body to the model.
#' 
#' For information about the format of the request body, see [Common Data Formats---Inference](http://docs.aws.amazon.com/sagemaker/latest/dg/cdf-inference.html).
#' @param ContentType The MIME type of the input data in the request body.
#' @param Accept The desired MIME type of the inference in the response.
#' @param CustomAttributes 
#'
#' @examples
#'
#' @export
invoke_endpoint <- function (EndpointName, Body, ContentType = NULL, 
    Accept = NULL, CustomAttributes = NULL) 
{
    op <- Operation(name = "InvokeEndpoint", http_method = "POST", 
        http_path = "/endpoints/{EndpointName}/invocations", 
        paginator = list())
    input <- invoke_endpoint_input(EndpointName = EndpointName, 
        Body = Body, ContentType = ContentType, Accept = Accept, 
        CustomAttributes = CustomAttributes)
    output <- invoke_endpoint_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
