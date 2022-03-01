#!/bin/bash

set -e

abort() {
  printf "%s\n" "$@"
  exit 1
}

# need bash
if [ -z "${BASH_VERSION:-}" ]
then
  abort "Bash is required to interpret this script."
fi

# First check OS.
OS="$(uname)"
echo "${OS}"
if [[ "${OS}" == "Linux" ]]
then
  echo "is linux"
elif [[ "${OS}" == "Darwin" ]]
then
  echo "is mac"
else
  echo "is not"
  abort "Config is only supported on macOS and Linux."
fi

exit 0