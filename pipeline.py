from neo4j import GraphDatabase


uri = "bolt://localhost:7687"
username = "neo4j"  
password = "chatbotchatbot"  
driver = GraphDatabase.driver(uri, auth=(username, password))

def query_database(query, parameters=None):
    with driver.session() as session:
        result = session.run(query, parameters)
        return [record.data() for record in result]
