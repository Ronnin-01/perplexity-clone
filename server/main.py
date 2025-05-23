from fastapi import FastAPI

app = FastAPI()

# chat
@app.post("/chat")
def chat_endpoint(query): pass
