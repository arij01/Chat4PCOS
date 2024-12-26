from fastapi import FastAPI
from pydantic import BaseModel
from fastapi.middleware.cors import CORSMiddleware
import uvicorn
from pipeline import generate_response

# FastAPI Initialization
app = FastAPI()

# Add CORS middleware
app.add_middleware(
    CORSMiddleware,
    allow_origins=["http://localhost:3000"],  
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

class UserQuery(BaseModel):
    query: str

# FastAPI endpoint
@app.post("/ask")
async def ask_question(user_query: UserQuery):
    user_input = user_query.query
    response = generate_response(user_input)
    return {"ai_model_response": response}

if __name__ == "__main__":
    uvicorn.run(app, host="127.0.0.1", port=8000)