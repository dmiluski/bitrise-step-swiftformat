#!/bin/bash
set -ex

if [ -z "${formatting_path}" ] ; then
  echo " [!] Missing required input: formatting_path"

  exit 1
fi

FLAGS=''

if [ -s "${format_config_file}" ] ; then
  FLAGS=$FLAGS' --config '"${format_config_file}"
fi

cd "${formatting_path}"

swiftformat . --lint ${FLAGS}
