# Use the official lightweight Python image
FROM python:3.10-slim

# Set the working directory inside the container
WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the app code into the container
COPY . .

# Expose the default port (required for RunPod to detect the service)
EXPOSE 8000

# Run the FastAPI app with uvicorn directly (no shell wrapper)
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000", "--log-level", "info"]
