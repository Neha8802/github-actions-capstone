#!/usr/bin/env bash
set -e

python run.py &
APP_PID=$!

# Make sure the background app stops when the script finishes (even if a test fails)
trap "kill $APP_PID 2>/dev/null || true" EXIT

sleep 2

RESPONSE=$(curl -fsS http://127.0.0.1:5000/health)
echo "Health response: $RESPONSE"

if [ "$RESPONSE" != "Server is up and running" ]; then
  echo "Unexpected health response!"
  exit 1
fi

echo "Health check passed!"
