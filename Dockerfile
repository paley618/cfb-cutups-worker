FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy everything *first*, then install
COPY . .

# Install requirements and fail if broken
RUN pip install --no-cache-dir -r requirements.txt

# Expose port Railway expects
EXPOSE 8000

# Run the app
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
