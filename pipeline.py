from neo4j import GraphDatabase
from transformers import pipeline
from fastapi import FastAPI
from pydantic import BaseModel
from fastapi.middleware.cors import CORSMiddleware
import uvicorn

# Neo4j Database Configuration
url = "bolt://localhost:7687"
username = "neo4j"
password = "chatbotchatbot"

driver = GraphDatabase.driver(url, auth=(username, password))

# Function to Query the Database
def query_database(query):
    with driver.session() as session:
        result = session.run(query)
        return [record.data() for record in result]

# Function to Load a Query from a File
def load_query(file_path):
    with open(file_path, "r") as file:
        return file.read()

pcos_query_path = "data/queries/pcos_query.cypher"
pcos_query = load_query(pcos_query_path)

# Hugging Face Model 
model_pipeline = pipeline("text-generation", model="gpt2")

# Function to Generate Chatbot Responses
def generate_response(user_input):
    # Fetch relevant data from Neo4j
    if "PCOS" in user_input:
        data = query_database(pcos_query)
        if data:
            # Format the fetched data for user display
            db_response = ""
            for record in data:
                hormones = record.get('hormones', [])
                for hormone in hormones:
                    db_response += f"FSH: {hormone.get('FSH_mIU_mL')} mIU/mL, "
                    db_response += f"LH: {hormone.get('LH_mIU_mL')} mIU/mL, "
                    db_response += f"AMH: {hormone.get('AMH_ng_mL')} ng/mL, "
                    db_response += f"TSH: {hormone.get('TSH_mIU_L')} mIU/L\n"
            return f"Database Information:\n{db_response}\n"
        else:
            return "No data found for the specified query."
    else:
        return "I couldn't find information on that topic."

# Function to Generate AI Model Response
def generate_model_response(user_input, db_response):
    prompt = f"User asked: {user_input}\nDatabase Information:\n{db_response}\nResponse:"
    model_response = model_pipeline(prompt, max_new_tokens=50, num_return_sequences=1)
    return model_response[0]['generated_text']

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
    db_response = generate_response(user_input)
    ai_model_response = generate_model_response(user_input, db_response)
    return {"ai_model_response": ai_model_response}

if __name__ == "__main__":
    uvicorn.run(app, host="127.0.0.1", port=8000)
    print("Received query:", user_input)
    print("Database response:", db_response)
    print("AI model response:", ai_model_response)
