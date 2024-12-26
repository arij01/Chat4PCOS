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

pcos_query_path = "data/queries/pcos_query.cypher"
pcos_query = load_query(pcos_query_path)

# Hugging Face Model 
model_pipeline = pipeline("text-generation", model="gpt2")

# Predefined responses
predefined_responses = {
    "hello": "Hello! How can I assist you today?",
    "hi": "Hi there! What can I do for you?",
    "how are you": "I'm just a bot, but I'm here to help you!",
    "what is your name": "I am Chat4PCOS, your personal assistant for PCOS-related queries.",
    "thank you": "You're welcome! If you have any more questions, feel free to ask."
}
# Generates Chatbot Responses
def generate_response(user_input):
    lower_input = user_input.lower()
    for key in predefined_responses:
        if key in lower_input:
            return predefined_responses[key]
    if "PCOS" in user_input:
        data = query_database(pcos_query)
        if data:
            db_response = ""
            for record in data:
                hormones = record.get('hormones', [])
                for hormone in hormones:
                    db_response += f"FSH: {hormone.get('FSH_mIU_mL')} mIU/mL, "
                    db_response += f"LH: {hormone.get('LH_mIU_mL')} mIU/mL, "
                    db_response += f"AMH: {hormone.get('AMH_ng_mL')} ng/mL, "
                    db_response += f"TSH: {hormone.get('TSH_mIU_L')} mIU/L\n"
            return db_response
    return generate_model_response(user_input, "No relevant database information found.")

# Function to Generate AI Model Response
def generate_model_response(user_input, db_response):
    prompt = f"User asked: {user_input}\nDatabase Information:\n{db_response}\nResponse:"
    model_response = model_pipeline(prompt, max_new_tokens=50, temperature=0.5, num_return_sequences=1)
    generated_text = model_response[0]['generated_text']
    
    # Extract the response part from the generated text
    response_start = generated_text.find("Response:") + len("Response:")
    response = generated_text[response_start:].strip()
    
    return response