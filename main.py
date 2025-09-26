from fastapi import FastAPI

app = FastAPI()

print("🚀 FastAPI app has started!")

@app.get("/")
def root():
    return {"status": "alive"}

@app.get("/health")
def health():
    return {"ok": True}

if __name__ == "__main__":
    import requests
    import time

    time.sleep(1)  # wait for app to start
    try:
        response = requests.get("http://localhost:8000/health")
        print("💡 Health check response:", response.text)
    except Exception as e:
        print("❌ Health check failed:", e)
