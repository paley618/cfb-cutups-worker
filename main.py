from fastapi import FastAPI
import os

app = FastAPI()

@app.get("/health")
def health():
    return {"ok": True}

@app.get("/ping")
def ping():
    return {"pong": True}

@app.get("/")
def root():
    return {"alive": True}

