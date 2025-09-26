from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def root():
    return {"status": "alive"}

@app.get("/health")
def health():
    return {"ok": True}

@app.post("/process")
def run_cutups(video_url: str):
    result = "This is where cutup logic goes"
    return {"result": result}

# DEBUG: check health on internal request after startup
if __name__ == "__main__":
    import requests
    import time

    print("🚀 FastAPI app is starting...")

    time.sleep(1)
    try:
        response = requests.get("http://localhost:8000/health")
        print("✅ Internal health check response:", response.text)
    except Exception as e:
        print("❌ Internal health check failed:", e)
