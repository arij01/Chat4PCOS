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


# Function to Generate Chatbot Responses
def generate_response(user_input):

    if "PCOS" in user_input:
        data = query_database(pcos_query)
        # print("Data from database:", data)  
        if data:
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
            db_response = "No data found for the specified query."
    else:
        db_response = "I couldn't find information on that topic."

    
    model_response = model_pipeline(f"User asked: {user_input}\nResponse:", max_length=100)

    return f"Database Information:\n{db_response}\n\nAI Model's Response:\n{model_response[0]['generated_text']}"

# Function to Generate AI Model Response
def generate_model_response(user_input, db_response):
    prompt = f"User asked: {user_input}\nDatabase Information:\n{db_response}\nResponse:"
    model_response = model_pipeline(prompt, max_length=100, num_return_sequences=1)
    return model_response[0]['generated_text']
# user_query = input("Ask me anything about PCOS: ")
# response = generate_response(user_query)
# print(response)