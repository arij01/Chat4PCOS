from neo4j import GraphDatabase


uri = "bolt://localhost:7687"
username = "neo4j"  
password = "chatbotchatbot"  
driver = GraphDatabase.driver(uri, auth=(username, password))

def test_connection():
    with driver.session() as session:
        result = session.run("MATCH (n) RETURN n LIMIT 1")
        for record in result:
            print(record)

test_connection()
driver.close()
