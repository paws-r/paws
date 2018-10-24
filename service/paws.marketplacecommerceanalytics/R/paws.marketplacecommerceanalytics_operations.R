#' Given a data set type and data set publication date, asynchronously publishes the requested data set to the specified S3 bucket and notifies the specified SNS topic once the data is available
#'
#' Given a data set type and data set publication date, asynchronously publishes the requested data set to the specified S3 bucket and notifies the specified SNS topic once the data is available. Returns a unique request identifier that can be used to correlate requests with notifications from the SNS topic. Data sets will be published in comma-separated values (CSV) format with the file name {data_set_type}_YYYY-MM-DD.csv. If a file with the same name already exists (e.g. if the same data set is requested twice), the original file will be overwritten by the new file. Requires a Role with an attached permissions policy providing Allow permissions for the following actions: s3:PutObject, s3:GetBucketLocation, sns:GetTopicAttributes, sns:Publish, iam:GetRolePolicy.
#'
#' @param dataSetType The desired data set type.
#' 
#' -   **customer\_subscriber\_hourly\_monthly\_subscriptions**
#' 
#'     From 2014-07-21 to present: Available daily by 5:00 PM Pacific Time.
#' 
#' -   **customer\_subscriber\_annual\_subscriptions**
#' 
#'     From 2014-07-21 to present: Available daily by 5:00 PM Pacific Time.
#' 
#' -   **daily\_business\_usage\_by\_instance\_type**
#' 
#'     From 2015-01-26 to present: Available daily by 5:00 PM Pacific Time.
#' 
#' -   **daily\_business\_fees**
#' 
#'     From 2015-01-26 to present: Available daily by 5:00 PM Pacific Time.
#' 
#' -   **daily\_business\_free\_trial\_conversions**
#' 
#'     From 2015-01-26 to present: Available daily by 5:00 PM Pacific Time.
#' 
#' -   **daily\_business\_new\_instances**
#' 
#'     From 2015-01-26 to present: Available daily by 5:00 PM Pacific Time.
#' 
#' -   **daily\_business\_new\_product\_subscribers**
#' 
#'     From 2015-01-26 to present: Available daily by 5:00 PM Pacific Time.
#' 
#' -   **daily\_business\_canceled\_product\_subscribers**
#' 
#'     From 2015-01-26 to present: Available daily by 5:00 PM Pacific Time.
#' 
#' -   **monthly\_revenue\_billing\_and\_revenue\_data**
#' 
#'     From 2015-02 to 2017-06: Available monthly on the 4th day of the month by 5:00pm Pacific Time. Data includes metered transactions (e.g. hourly) from two months prior.
#' 
#'     From 2017-07 to present: Available monthly on the 15th day of the month by 5:00pm Pacific Time. Data includes metered transactions (e.g. hourly) from one month prior.
#' 
#' -   **monthly\_revenue\_annual\_subscriptions**
#' 
#'     From 2015-02 to 2017-06: Available monthly on the 4th day of the month by 5:00pm Pacific Time. Data includes up-front software charges (e.g. annual) from one month prior.
#' 
#'     From 2017-07 to present: Available monthly on the 15th day of the month by 5:00pm Pacific Time. Data includes up-front software charges (e.g. annual) from one month prior.
#' 
#' -   **disbursed\_amount\_by\_product**
#' 
#'     From 2015-01-26 to present: Available every 30 days by 5:00 PM Pacific Time.
#' 
#' -   **disbursed\_amount\_by\_product\_with\_uncollected\_funds**
#' 
#'     From 2012-04-19 to 2015-01-25: Available every 30 days by 5:00 PM Pacific Time.
#' 
#'     From 2015-01-26 to present: This data set was split into three data sets: disbursed\_amount\_by\_product, disbursed\_amount\_by\_age\_of\_uncollected\_funds, and disbursed\_amount\_by\_age\_of\_disbursed\_funds.
#' 
#' -   **disbursed\_amount\_by\_instance\_hours**
#' 
#'     From 2012-09-04 to present: Available every 30 days by 5:00 PM Pacific Time.
#' 
#' -   **disbursed\_amount\_by\_customer\_geo**
#' 
#'     From 2012-04-19 to present: Available every 30 days by 5:00 PM Pacific Time.
#' 
#' -   **disbursed\_amount\_by\_age\_of\_uncollected\_funds**
#' 
#'     From 2015-01-26 to present: Available every 30 days by 5:00 PM Pacific Time.
#' 
#' -   **disbursed\_amount\_by\_age\_of\_disbursed\_funds**
#' 
#'     From 2015-01-26 to present: Available every 30 days by 5:00 PM Pacific Time.
#' 
#' -   **customer\_profile\_by\_industry**
#' 
#'     From 2015-10-01 to 2017-06-29: Available daily by 5:00 PM Pacific Time.
#' 
#'     From 2017-06-30 to present: This data set is no longer available.
#' 
#' -   **customer\_profile\_by\_revenue**
#' 
#'     From 2015-10-01 to 2017-06-29: Available daily by 5:00 PM Pacific Time.
#' 
#'     From 2017-06-30 to present: This data set is no longer available.
#' 
#' -   **customer\_profile\_by\_geography**
#' 
#'     From 2015-10-01 to 2017-06-29: Available daily by 5:00 PM Pacific Time.
#' 
#'     From 2017-06-30 to present: This data set is no longer available.
#' 
#' -   **sales\_compensation\_billed\_revenue**
#' 
#'     From 2016-12 to 2017-06: Available monthly on the 4th day of the month by 5:00pm Pacific Time. Data includes metered transactions (e.g. hourly) from two months prior, and up-front software charges (e.g. annual) from one month prior.
#' 
#'     From 2017-06 to present: Available monthly on the 15th day of the month by 5:00pm Pacific Time. Data includes metered transactions (e.g. hourly) from one month prior, and up-front software charges (e.g. annual) from one month prior.
#' 
#' -   **us\_sales\_and\_use\_tax\_records**
#' 
#'     From 2017-02-15 to present: Available monthly on the 15th day of the month by 5:00 PM Pacific Time.
#' @param dataSetPublicationDate The date a data set was published. For daily data sets, provide a date with day-level granularity for the desired day. For weekly data sets, provide a date with day-level granularity within the desired week (the day value will be ignored). For monthly data sets, provide a date with month-level granularity for the desired month (the day value will be ignored).
#' @param roleNameArn The Amazon Resource Name (ARN) of the Role with an attached permissions policy to interact with the provided AWS services.
#' @param destinationS3BucketName The name (friendly name, not ARN) of the destination S3 bucket.
#' @param snsTopicArn Amazon Resource Name (ARN) for the SNS Topic that will be notified when the data set has been published or if an error has occurred.
#' @param destinationS3Prefix (Optional) The desired S3 prefix for the published data set, similar to a directory path in standard file systems. For example, if given the bucket name "mybucket" and the prefix "myprefix/mydatasets", the output file "outputfile" would be published to "s3://mybucket/myprefix/mydatasets/outputfile". If the prefix directory structure does not exist, it will be created. If no prefix is provided, the data set will be published to the S3 bucket root.
#' @param customerDefinedValues (Optional) Key-value pairs which will be returned, unmodified, in the Amazon SNS notification message and the data set metadata file. These key-value pairs can be used to correlated responses with tracking information from other systems.
#'
#' @examples
#'
#' @export
generate_data_set <- function (dataSetType, dataSetPublicationDate, 
    roleNameArn, destinationS3BucketName, snsTopicArn, destinationS3Prefix = NULL, 
    customerDefinedValues = NULL) 
{
    op <- Operation(name = "GenerateDataSet", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- generate_data_set_input(dataSetType = dataSetType, 
        dataSetPublicationDate = dataSetPublicationDate, roleNameArn = roleNameArn, 
        destinationS3BucketName = destinationS3BucketName, snsTopicArn = snsTopicArn, 
        destinationS3Prefix = destinationS3Prefix, customerDefinedValues = customerDefinedValues)
    output <- generate_data_set_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Given a data set type and a from date, asynchronously publishes the requested customer support data to the specified S3 bucket and notifies the specified SNS topic once the data is available
#'
#' Given a data set type and a from date, asynchronously publishes the requested customer support data to the specified S3 bucket and notifies the specified SNS topic once the data is available. Returns a unique request identifier that can be used to correlate requests with notifications from the SNS topic. Data sets will be published in comma-separated values (CSV) format with the file name {data_set_type}_YYYY-MM-DD'T'HH-mm-ss'Z'.csv. If a file with the same name already exists (e.g. if the same data set is requested twice), the original file will be overwritten by the new file. Requires a Role with an attached permissions policy providing Allow permissions for the following actions: s3:PutObject, s3:GetBucketLocation, sns:GetTopicAttributes, sns:Publish, iam:GetRolePolicy.
#'
#' @param dataSetType Specifies the data set type to be written to the output csv file. The data set types customer\_support\_contacts\_data and test\_customer\_support\_contacts\_data both result in a csv file containing the following fields: Product Id, Product Code, Customer Guid, Subscription Guid, Subscription Start Date, Organization, AWS Account Id, Given Name, Surname, Telephone Number, Email, Title, Country Code, ZIP Code, Operation Type, and Operation Time.
#' 
#' -   *customer\_support\_contacts\_data* Customer support contact data. The data set will contain all changes (Creates, Updates, and Deletes) to customer support contact data from the date specified in the from\_date parameter.
#' -   *test\_customer\_support\_contacts\_data* An example data set containing static test data in the same format as customer\_support\_contacts\_data
#' @param fromDate The start date from which to retrieve the data set in UTC. This parameter only affects the customer_support_contacts_data data set type.
#' @param roleNameArn The Amazon Resource Name (ARN) of the Role with an attached permissions policy to interact with the provided AWS services.
#' @param destinationS3BucketName The name (friendly name, not ARN) of the destination S3 bucket.
#' @param snsTopicArn Amazon Resource Name (ARN) for the SNS Topic that will be notified when the data set has been published or if an error has occurred.
#' @param destinationS3Prefix (Optional) The desired S3 prefix for the published data set, similar to a directory path in standard file systems. For example, if given the bucket name "mybucket" and the prefix "myprefix/mydatasets", the output file "outputfile" would be published to "s3://mybucket/myprefix/mydatasets/outputfile". If the prefix directory structure does not exist, it will be created. If no prefix is provided, the data set will be published to the S3 bucket root.
#' @param customerDefinedValues (Optional) Key-value pairs which will be returned, unmodified, in the Amazon SNS notification message and the data set metadata file.
#'
#' @examples
#'
#' @export
start_support_data_export <- function (dataSetType, fromDate, 
    roleNameArn, destinationS3BucketName, snsTopicArn, destinationS3Prefix = NULL, 
    customerDefinedValues = NULL) 
{
    op <- Operation(name = "StartSupportDataExport", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- start_support_data_export_input(dataSetType = dataSetType, 
        fromDate = fromDate, roleNameArn = roleNameArn, destinationS3BucketName = destinationS3BucketName, 
        snsTopicArn = snsTopicArn, destinationS3Prefix = destinationS3Prefix, 
        customerDefinedValues = customerDefinedValues)
    output <- start_support_data_export_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
