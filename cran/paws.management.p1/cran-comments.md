## Test environments

* local macOS install, R 4.2.1
* R-hub (devel and release)

## R CMD check results

There were no ERRORs, or WARNINGs.

There was one NOTE.

checking for portable file names ... NOTE
Found the following non-portable file path:
  paws.management.p2/man/servicecatalog_batch_disassociate_service_action_from_provisioning_artifact.Rd

Tarballs are only required to store paths of up to 100 bytes and cannot
store those of more than 256 bytes, with restrictions including to 100
bytes for the final component.
See section ‘Package structure’ in the ‘Writing R Extensions’ manual.

Author's Note: this length is expected as it reflects an Amazon Web Service (AWS) service

## Downstream dependencies

All downstream dependencies ('paws.management') pass R CMD check.
