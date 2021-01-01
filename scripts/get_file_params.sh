#!/usr/bin/env bash

commit_msg="$1"

regex="^driveload: (.*) (.*)$"

if ! [[ "$commit_msg" =~ $regex ]]
then
  echo "commit message '${commit_msg}' did not match regex. exiting."
  exit 1
fi

file_url="${BASH_REMATCH[1]}"
file_name="${BASH_REMATCH[2]}"

echo "::set-output name=file_url::${file_url}"
echo "::set-output name=file_name::${file_name}"
