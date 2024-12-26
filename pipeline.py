import os
from neo4j import GraphDatabase
from openai import OpenAI

uri = "bolt://localhost:7687"
username = "neo4j"  
password = "chatbotchatbot"  

client = OpenAI(api_key = "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")
driver = GraphDatabase.driver(uri, auth=(username, password))

def query_database(query, parameters):
    with driver.session() as session:
        result = session.run(query, parameters)
        return [record.data() for record in result]

def load_query(file_path):
    with open(file_path, "r") as file:
        return file.read()


query = load_query("data/queries.cypher")
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
    prompt = f"""
    The following is the medical profile of Patient ID {parameters['patient_id']}:

    - Patient Information:
        Age: {patient.get('Age')}
        Weight: {patient.get('Weight')} kg
        Height: {patient.get('Height')} cm
        BMI: {patient.get('BMI')}

    - Conditions:
    """
    for condition in conditions:
        prompt += f"  - PCOS Diagnosis: {'Yes' if condition.get('PCOS_YN') else 'No'}, "
        prompt += f"Cycle Regularity: {condition.get('Cycle_RI')}, "
        prompt += f"Cycle Length: {condition.get('Cycle_length_days')} days\n"

    prompt += "\n- Hormonal Profile:\n"
    for hormone in hormones:
        prompt += f"  - FSH: {hormone.get('FSH_mIU_mL')} mIU/mL, "
        prompt += f"LH: {hormone.get('LH_mIU_mL')} mIU/mL, "
        prompt += f"AMH: {hormone.get('AMH_ng_mL')} ng/mL, "
        prompt += f"TSH: {hormone.get('TSH_mIU_L')} mIU/L\n"

    prompt += "\n- Risk Factors:\n"
    for risk in risk_factors:
        prompt += f"  - Weight Gain: {'Yes' if risk.get('Weight_gain_YN') else 'No'}, "
        prompt += f"Hair Growth: {'Yes' if risk.get('Hair_growth_YN') else 'No'}, "
        prompt += f"Skin Darkening: {'Yes' if risk.get('Skin_darkening_YN') else 'No'}, "
        prompt += f"Pimples: {'Yes' if risk.get('Pimples_YN') else 'No'}, "
        prompt += f"Fast Food: {'Yes' if risk.get('Fast_food_YN') else 'No'}, "
        prompt += f"Regular Exercise: {'Yes' if risk.get('Reg_Exercise_YN') else 'No'}\n"

    prompt += "\nBased on this data, provide general insights and advice regarding PCOS and related health factors.\n"

    # Generate response from OpenAI
    response = client.chat.completions.create(
        model="gpt-4o-mini",
        messages=[{"role": "user", "content": prompt}],
        max_tokens=100
    )

    # Print the response
    print("\nGenerated Response:")
    print(response['choices'][0]['message']['content'])

# Close the Neo4j driver
#driver.close()