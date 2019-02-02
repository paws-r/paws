#!/bin/bash

# Find internal package functions whose names collide with SDK operations.

package_files=$(find make.paws/R -name "*.R" ! -name "make_*.R")
sdk_files=$(find service -name "*_operations.R")

functions=$(grep -Poh -e "^[a-zA-Z0-9_\.]+(?= ?<- ?function)" $package_files | sort -u)
operations=$(grep -Poh -e "^[a-zA-Z0-9_\.]+(?= ?<- ?function)" $sdk_files | sort -u)

comm -12 <(echo $functions | tr " " "\n") <(echo $operations | tr " " "\n")

