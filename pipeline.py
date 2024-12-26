import os
from neo4j import GraphDatabase
from transformers import pipeline

uri = "bolt://localhost:7687"
username = "neo4j"  
password = "chatbotchatbot"  


driver = GraphDatabase.driver(uri, auth=(username, password))

def query_database(query):
    with driver.session() as session:
        result = session.run(query)
        return [record.data() for record in result]

def load_query(file_path):
    with open(file_path, "r") as file:
        return file.read()


query = load_query("data/queries/pcos_query.cypher")

data = query_database(query)
# print(data)

prompt = "Hello"

# Generate response from Hugging Face
response = generator(prompt, max_length=500, num_return_sequences=1)

    # Print the response
print(response[0]['generated_text'])

# Close the Neo4j driver
#driver.close()