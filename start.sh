#!/bin/bash
set -e

echo "Starting FastAPI app with uvicorn..."
uvicorn main:app --host 0.0.0.0 --port 8000

git update-index --chmod=+x start.sh
git commit -m "Ensure start.sh is executable"
git push
