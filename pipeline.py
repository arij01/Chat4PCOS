import os
from neo4j import GraphDatabase
from openai import OpenAI

uri = "bolt://localhost:7687"
username = "neo4j"  
password = "chatbotchatbot"  

client = OpenAI(api_key = "OPENAI_API_KEY")
driver = GraphDatabase.driver(uri, auth=(username, password))

def query_database(query, parameters=None):
    with driver.session() as session:
        result = session.run(query, parameters)
        return [record.data() for record in result]

def load_query(file_path):
    with open(file_path, "r") as file:
        return file.read()


query = load_query("data/queries.cypher")

data = query_database(query)
print(data)
driver.close()
# Construct a prompt summarizing graph data
# prompt = "The following data has been retrieved from a graph database:\n\n"
# for record in data:
#     patient = record.get("p", {})
#     node = record.get("n", {})
#     relationship = record.get("r", {})
#     prompt += f"- Patient: {patient}\n"
#     prompt += f"  Relationship: {relationship}\n"
#     prompt += f"  Node: {node}\n\n"

#     prompt += (
#         "Based on the data, provide general insights and conclusions about "
#          "the relationship between PCOS, hormone levels, and risk factors."
#         )
    
# response = client.chat.completions.create(
#     model="gpt-4o-mini",

#     messages=[{"role":"user","content":prompt}],

#     max_tokens=100

# )

# print(response.choices[0].message.content)