from neo4j import GraphDatabase
from transformers import pipeline

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


# Load Existing Query
pcos_query_path = "data/queries/pcos_query.cypher"
pcos_query = load_query(pcos_query_path)

# Hugging Face Model Initialization
model_pipeline = pipeline("text-generation", model="gpt2")


# Function to Generate Chatbot Responses
def generate_response(user_input):
    # Fetch relevant data from Neo4j
    if "PCOS" in user_input:
        data = query_database(pcos_query)
        # Format the fetched data for user display
        db_response = "\n".join([f"{record['hormone']} level: {record['level']}" for record in data])
    else:
        db_response = "I couldn't find information on that topic."

    # Use Hugging Face to generate a conversational response
    model_response = model_pipeline(f"User asked: {user_input}\nResponse:", max_length=100)
    
    # Combine both responses
    return f"Database Information:\n{db_response}\n\nAI Model's Response:\n{model_response[0]['generated_text']}"



user_query = input("Ask me anything about PCOS: ")
response = generate_response(user_query)
print(response)