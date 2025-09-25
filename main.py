from fastapi import FastAPI
from worker import process_game  # your custom logic

app = FastAPI()

@app.get("/")
def root():
    return {"status": "alive"}

@app.get("/health")
def health():
    return {"ok": True}

@app.post("/process")
def run_cutups(video_url: str):
    result = process_game(video_url)  # You write this
    return {"result": result}
