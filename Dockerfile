FROM python:3.10-slim

WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the app code
COPY . .

# Make start script executable
RUN chmod +x start.sh

EXPOSE 8000

# Start the app
CMD ["sh", "./start.sh"]
