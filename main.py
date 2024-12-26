from fastapi import FastAPI, HTTPException
from pipeline import generate_response
from pydantic import BaseModel
import uvicorn

# Initialization
app = FastAPI()
user_query = input("Ask me anything about PCOS: ")

# Endpoint
@app.post("/ask")
def ask_question(user_query):
    try:
        response = generate_response(user_query.query)
        # prompt = f"User asked: {user_query.query}\nDatabase Information:\n{db_response}\nResponse:"
        # model_response = model_pipeline(prompt, max_length=100, num_return_sequences=1)
        return {
            "database_information": response,
            # "ai_model_response": model_response[0]['generated_text']
        }
    except Exception as e:
        raise HTTPException(status_code=500, detail=str(e))
uvicorn.run(app, host="0.0.0.0", port=8000)