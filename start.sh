#!/bin/bash

echo "Starting container..."
echo "Current directory: $(pwd)"
echo "Files in working directory:"
ls -l

echo "Python version:"
python --version

echo "Attempting to run Uvicorn..."
exec uvicorn main:app --host 0.0.0.0 --port ${PORT:-8000} --log-level debug
