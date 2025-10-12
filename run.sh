#!/bin/bash
set -euo pipefail

# Validate required environment variables without printing their values
: "${ADMIN_ID:?Environment variable ADMIN_ID must be set}"
: "${ADMIN_PWD:?Environment variable ADMIN_PWD must be set}"
: "${NODE_URL:?Environment variable NODE_URL must be set}"

docker run --name jenkins --rm \
  -p 8080:8080 \
  -v jenkins_home:/var/jenkins_home \
  --env NODE_URL="${NODE_URL}" \
  --env JENKINS_ADMIN_ID="${ADMIN_ID}" \
  --env JENKINS_ADMIN_PASSWORD="${ADMIN_PWD}" \
  jenkins:jcasc
