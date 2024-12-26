MATCH (p:Patient {id: $patient_id})-[:HAS_CONDITION]->(c:Condition),
      (p)-[:HAS_HORMONE]->(h:Hormone),
      (p)-[:HAS_RISKFACTOR]->(r:RiskFactor)
RETURN p, collect(c) AS conditions, collect(h) AS hormones, collect(r) AS risk_factors
