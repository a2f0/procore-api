#!/bin/bash

if [[ -z "${ACCESS_TOKEN}" ]]; then
  echo "Configure ACCESS_TOKEN"
  exit 1
fi
if [[ -z "${PROJECT_ID}" ]]; then
  echo "Configure PROJECT_ID"
  exit 1
fi
curl -H "Authorization: Bearer $ACCESS_TOKEN" -X POST https://api.procore.com/rest/v1.0/images/?project_id=$PROJECT_ID \
-F image[data]=@test_image.jpg