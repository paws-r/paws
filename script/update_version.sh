#!/bin/bash

# Update a package's version number if its files have changed since the last commit.
# Usage: ./scripts/update_version.sh <package>

package=$1

version_file="VERSIONS.txt"
package_dir="service/$package"
description_file="$package_dir/DESCRIPTION"

# Gets the value associated with a key in a file.
# Usage: get <file> <key> <delim>
get () {
  file=$1
  key=$2
  delim=$3
  grep -P "^$key$delim" "$file" | awk '{ print $2 }'
}

# Sets the value for a key in file.
# Usage: set <file> <key> <value> <delim>
set () {
  file=$1
  key=$2
  value=$3
  delim=$4
  search="$key$delim"
  replace="$key$delim$value"
  if grep -Pq "^$search.*" "$file"; then
    sed -i "s/^$search.*/$replace/" "$file"
  else
    echo -e "$replace" >> "$file"
  fi
}

# Add 1 to the last part of a version number, e.g. 0.0.1 -> 0.0.2.
# Usage: increment_version <version>
increment_version () {
  version=$1
  echo "$version" | awk -F. '{ OFS="."; ++$NF; print }'
}

#-------------------------------------------------------------------------------

# If the package has uncommitted changes, update the version number.

changes=$(git status "$package_dir" --porcelain)

if [[ -n "$changes" ]]; then
  old_version=$(get "$version_file" "$package" "\t")
  if [ "$old_version" != "" ]; then
    new_version=$(increment_version "$old_version")
  else
    new_version=0.1.0
  fi
  set "$version_file" "$package" "$new_version" "\t"
  set "$description_file" "Version" "$new_version" ": "
fi
