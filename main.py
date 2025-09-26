import logging
from fastapi import FastAPI

# Enable logging to Railway logs
logging.basicConfig(level=logging.INFO)

app = FastAPI()

@app.get("/")
def root():
    logging.info("📡 Root endpoint hit")
    return {"status": "alive"}

@app.get("/health")
def health():
    logging.info("📡 Health endpoint hit")
    return {"ok": True}

@app.post("/process")
def run_cutups(video_url: str):
    logging.info(f"🎥 Processing video at URL: {video_url}")
    # Placeholder logic for now
    return {"result": f"Processing started for {video_url}"}
