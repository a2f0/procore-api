#!/bin/bash

if [[ -z "${ACCESS_TOKEN}" ]]; then
  echo "Configure ACCESS_TOKEN"
  exit 1
fi

curl -H "Authorization: Bearer $ACCESS_TOKEN" -X GET https://api.procore.com/rest/v1.0/me
