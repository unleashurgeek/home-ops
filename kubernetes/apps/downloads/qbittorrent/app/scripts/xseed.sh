#!/usr/bin/env bash

XSEED_HOST=${XSEED_HOST:-crossseed}
XSEED_PORT=${XSEED_PORT:-8080}
XSEED_APIKEY=${XSEED_APIKEY:-unset}
XSEED_SLEEP_INTERVAL=${CROSS_SEED_SLEEP_INTERVAL:-30}

INFO_HASH=$1
NAME=$2

response=$(curl \
  --write-out "%{http_code}" \
  --request POST \
  --data-urlencode "infoHash=${INFO_HASH}" \
  --header "X-Api-Key: ${XSEED_APIKEY}" \
  "http://${XSEED_HOST}:${XSEED_PORT}/api/webhook"
)

if [[ "${response}" != "204" ]]; then
  printf "Failed to search cross-seed for '%s'\n" "${NAME}"
  exit 1
fi

printf "Successfully searched cross-seed for '%s'\n" "${NAME}"

sleep "${XSEED_SLEEP_INTERVAL}"
