FROM python:3.10-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .
RUN chmod +x start.sh  # <--- Add this!

EXPOSE 8000

CMD ["sh", "./start.sh"]
