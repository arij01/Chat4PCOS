import os
from neo4j import GraphDatabase
from transformers import pipeline

uri = "bolt://localhost:7687"
username = "neo4j"  
password = "chatbotchatbot"  

TOKEN = os.getenv("HUGGINGFACE_TOKEN")
# Initialize the Hugging Face pipeline
generator = pipeline('text-generation', model='gpt-2', use_auth_token=TOKEN)
driver = GraphDatabase.driver(uri, auth=(username, password))

def query_database(query, parameters):
    with driver.session() as session:
        result = session.run(query, parameters)
        return [record.data() for record in result]

def load_query(file_path):
    with open(file_path, "r") as file:
        return file.read()


query = load_query("data/queries/pcos_query.cypher")
parameters = {"patient_id": 1}
data = query_database(query, parameters)


# Ensure data exists
if not data:
    print("No data found for the specified patient ID.")
else:
    # Extract data from the query results
    record = data[0]  # Assuming one patient at a time
    patient = record.get("p", {})
    conditions = record.get("conditions", [])
    hormones = record.get("hormones", [])
    risk_factors = record.get("risk_factors", [])

    # Construct a prompt summarizing graph data
    prompt = "Hello"

# Generate response from Hugging Face
    response = generator(prompt, max_length=500, num_return_sequences=1)

    # Print the response
    print(response[0]['generated_text'])

# Close the Neo4j driver
#driver.close()