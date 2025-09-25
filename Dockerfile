# Use lightweight Python base image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the app code
COPY . .

# Expose FastAPI default port
EXPOSE 8000

# Run the FastAPI app directly
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
