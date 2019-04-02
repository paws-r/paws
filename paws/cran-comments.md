## Test environments
* local Windows install, R 3.5.1
* Linux (on Travis), R 3.5.2
* Windows (on AppVeyor), R 3.5.2
* R-hub (devel and release)

## R CMD check results

There were no ERRORs or WARNINGs.

There were three NOTEs:

---

### Maintainer: 'David Kretch <david.kretch@gmail.com>'

New submission

---

### checking installed package size ... NOTE
  installed size is 24.7Mb
  sub-directories of 1Mb or more:
    R     10.7Mb
    help  13.4Mb
    
The package is very large, but it includes support for over 5,000 operations
from 170 different services on AWS, and includes documentation for each. We
think this documentation will be helpful for users.

In addition, we plan that this package be updated less often, since handling
API requests is done by sister package paws.common. paws.common is much smaller
and most bug fixes will be made there.

---

### Found the following (possibly) invalid URLs:

  URL: http://docs.aws.amazon.com/certificate-manager/ (moved to https://docs.aws.amazon.com/certificate-manager/)
    From: man/iam_upload_server_certificate.Rd
    Status: 404
    Message: Not Found
  URL: http://docs.aws.amazon.com/cloudhsm/latest/APIReference/API_CreateHsm (moved to https://docs.aws.amazon.com/cloudhsm/latest/APIReference/API_CreateHsm)
    From: man/kms_connect_custom_key_store.Rd
    Status: 404
    Message: Not Found
  URL: http://docs.aws.amazon.com/cloudhsm/latest/APIReference/API_DescribeClusters (moved to https://docs.aws.amazon.com/cloudhsm/latest/APIReference/API_DescribeClusters)
    From: man/kms_connect_custom_key_store.Rd
    Status: 404
    Message: Not Found
  URL: http://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore-html (moved to https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore-html)
    From: man/kms_describe_custom_key_stores.Rd
    Status: 404
    Message: Not Found
  URL: https://docs.aws.amazon.com/kinesisanalytics/latest/Java/creating-app.html
    From: man/kinesisanalyticsv2_create_application.Rd
    Status: 404
    Message: Not Found
  URL: https://docs.aws.amazon.com/sync-service/latest/userguide/configuring-s3-locations.html
    From: man/datasync_create_location_s3.Rd
    Status: 404
    Message: Not Found
  URL: https://docs.aws.amazon.com/sync-service/latest/userguide/how-awssync-works.html#terminology
    From: man/datasync_start_task_execution.Rd
    Status: 404
    Message: Not Found
  URL: https://docs.aws.amazon.com/sync-service/latest/userguide/working-with-sync-agents.html#activating-sync-agent
    From: man/datasync_create_agent.Rd
    Status: 404
    Message: Not Found
  URL: https://petstore-demo-endpoint.execute-api.com/petstore/pets
    From: man/apigateway_put_method.Rd
    Status: Error
    Message: libcurl error code 7:
      	Failed to connect to petstore-demo-endpoint.execute-api.com port 443: Connection refused
  URL: https://www.centos.org/docs/5/html/Deployment_Guide-en-US/s1-nfs-server-config-exports.html
    From: man/datasync_create_location_nfs.Rd
    Status: 404
    Message: Not Found
    
These URLs are included in the documentation provided by AWS; we use them as-is.
As they update their documentation and fix these, they will be fixed in the
package as well.


## Downstream dependencies

None.
