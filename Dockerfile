FROM python:3.10-slim

WORKDIR /app

COPY . .

RUN pip install gunicorn uvicorn fastapi

EXPOSE 8000

CMD ["gunicorn", "-k", "uvicorn.workers.UvicornWorker", "main:app", "-b", "0.0.0.0:8000"]
