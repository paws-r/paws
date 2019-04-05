## Test environments
* local Windows install, R 3.5.1
* Linux (on Travis), R 3.5.2
* Windows (on AppVeyor), R 3.5.2
* R-hub (devel and release)

## R CMD check results

There were no ERRORs or WARNINGs.

There were two NOTEs:

> > checking CRAN incoming feasibility ... NOTE
>   Maintainer: ‘David Kretch <david.kretch@gmail.com>’
>   
>   New submission


> > checking installed package size ... NOTE
>     installed size is 24.5Mb
>     sub-directories of 1Mb or more:
>       R     10.7Mb
>       help  13.2Mb
    
The package is very large, but it includes support for over 5,000 operations
from 170 different services on AWS, and includes documentation for each. We
think this documentation will be helpful for users.

In addition, we plan that this package be updated less often, since handling
API requests is done by sister package paws.common. paws.common is much smaller
and most bug fixes will be made there.

## Downstream dependencies

None.
