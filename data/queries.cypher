// Relationship creation
MATCH (p:Patient), (c:Condition)
WHERE p.id = c.patient_id
CREATE (p)-[:HAS_CONDITION]->(c);
MATCH (p:Patient), (h:Hormone)
WHERE p.id = h.patient_id
CREATE (p)-[:HAS_HORMONE]->(h);
MATCH (p:Patient), (r:RiskFactor)
WHERE p.id = r.patient_id
CREATE (p)-[:HAS_RISKFACTOR]->(r);