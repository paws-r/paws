## Test environments

* local macOS install, R 4.2.1
* R-hub (devel and release)

## R CMD check results

There were no ERRORs, or WARNINGs.

There was two NOTEs.

* checking CRAN incoming feasibility ... [158s] NOTE
Maintainer: 'Dyfan Jones <dyfan.r.jones@gmail.com>'

New submission

* checking for portable file names ... NOTE
Found the following non-portable file path:
  paws.security.identity.p2/man/ssoadmin_detach_customer_managed_policy_reference_from_permission_set.Rd

Tarballs are only required to store paths of up to 100 bytes and cannot
store those of more than 256 bytes, with restrictions including to 100
bytes for the final component.
See section 'Package structure' in the 'Writing R Extensions' manual.

Author's Note: this length is expected as it reflects an Amazon Web Service (AWS) service

## Downstream dependencies

All downstream dependencies ('paws.security.identity') pass R CMD check.
