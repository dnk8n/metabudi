#!/bin/bash

# Get the directory path of the current script
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

# Download docker-compose.yaml to the parent directory of the script
curl -sS https://raw.githubusercontent.com/Budibase/budibase/master/hosting/docker-compose.yaml -o "${SCRIPT_DIR}/../docker-compose.yaml"

echo "docker-compose.yaml file downloaded and saved to ${SCRIPT_DIR}/../docker-compose.yaml"
