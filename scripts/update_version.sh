#!/bin/bash

# Update a package's version number if its files have changed since the last commit.
# Usage: ./scripts/update_version.sh <package>

package=$1

version_file="VERSIONS"
package_dir="service"

# Gets the value associated with a key in a file.
# Usage: get <file> <key>
get () {
  file=$1
  key=$2
  grep "^$key:" "$file" | awk '{ print $2 }'
}

# Sets the value for a key in file.
# Usage: set <file> <key> <value>
set () {
  file=$1
  key=$2
  value=$3
  sed -i "s/^$key: .*$/$key: $value/" "$file"
}

# Add 1 to the last part of a version number, e.g. 0.0.1 -> 0.0.2.
# Usage: increment_version <version>
increment_version () {
  version=$1
  echo "$version" | awk -F. '{ OFS="."; ++$NF; print }'
}

#-------------------------------------------------------------------------------

# If the package has uncommitted changes, update the version number.

changes=$(git status "$package_dir/$package" --porcelain)

if [[ -n $changes ]]; then
  old_version=$(get "$version_file" "$package")
  new_version=$(increment_version "$old_version")
  set "$version_file" "$package" "$new_version"
  set "$package_dir/$package/DESCRIPTION" "Version" "$new_version"
fi
