#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

echo "Starting FastAPI app with uvicorn..."

# Start the server
uvicorn main:app --host 0.0.0.0 --port 8000
