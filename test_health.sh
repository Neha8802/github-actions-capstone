#!/usr/bin/env bash
set -e

RESPONSE=$(curl -fsS http://127.0.0.1:5000/health)
echo "Health response: $RESPONSE"

if [ "$RESPONSE" != "Server is up and running" ]; then
  echo "Unexpected health response!"
  exit 1
fi

echo "Health check passed!"
