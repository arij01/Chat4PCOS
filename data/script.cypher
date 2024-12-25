// Patient Nodes
CREATE (:Patient { id: 1, Age: 28, Weight: 44.6, Height: 152.0, BMI: 19.29 });
CREATE (:Patient { id: 2, Age: 32, Weight: 62.3, Height: 165.0, BMI: 22.87 });
CREATE (:Patient { id: 3, Age: 24, Weight: 58.7, Height: 160.0, BMI: 22.93 });

// Condition Nodes
CREATE (:Condition { id: 1, patient_id: 1, PCOS_YN: 0, Cycle_RI: 2, Cycle_length_days: 5 });
CREATE (:Condition { id: 2, patient_id: 2, PCOS_YN: 1, Cycle_RI: 1, Cycle_length_days: 8 });
CREATE (:Condition { id: 3, patient_id: 3, PCOS_YN: 1, Cycle_RI: 1, Cycle_length_days: 6 });

// Hormone Nodes
CREATE (:Hormone { id: 1, patient_id: 1, FSH_mIU_mL: 7.95, LH_mIU_mL: 3.68, FSH_LH: 2.16, AMH_ng_mL: 2.07, TSH_mIU_L: 0.68 });
CREATE (:Hormone { id: 2, patient_id: 2, FSH_mIU_mL: 8.23, LH_mIU_mL: 4.12, FSH_LH: 2.00, AMH_ng_mL: 3.25, TSH_mIU_L: 0.98 });
CREATE (:Hormone { id: 3, patient_id: 3, FSH_mIU_mL: 7.62, LH_mIU_mL: 3.95, FSH_LH: 1.93, AMH_ng_mL: 1.95, TSH_mIU_L: 1.15 });

// RiskFactor Nodes
CREATE (:RiskFactor { id: 1, patient_id: 1, Weight_gain_YN: 0, Hair_growth_YN: 0, Skin_darkening_YN: 0, Pimples_YN: 0, Fast_food_YN: 1, Reg_Exercise_YN: 0 });
CREATE (:RiskFactor { id: 2, patient_id: 2, Weight_gain_YN: 1, Hair_growth_YN: 1, Skin_darkening_YN: 0, Pimples_YN: 1, Fast_food_YN: 1, Reg_Exercise_YN: 0 });
CREATE (:RiskFactor { id: 3, patient_id: 3, Weight_gain_YN: 1, Hair_growth_YN: 0, Skin_darkening_YN: 1, Pimples_YN: 0, Fast_food_YN: 0, Reg_Exercise_YN: 1 });

// Relationships
MATCH (p:Patient {id: 1}), (c:Condition {patient_id: 1})
CREATE (p)-[:PATIENT_HAS_CONDITION]->(c);

MATCH (p:Patient {id: 1}), (h:Hormone {patient_id: 1})
CREATE (p)-[:PATIENT_HAS_MEASUREMENT]->(h);

MATCH (p:Patient {id: 1}), (r:RiskFactor {patient_id: 1})
CREATE (p)-[:PATIENT_HAS_RISK]->(r);

MATCH (p:Patient {id: 2}), (c:Condition {patient_id: 2})
CREATE (p)-[:PATIENT_HAS_CONDITION]->(c);

MATCH (p:Patient {id: 2}), (h:Hormone {patient_id: 2})
CREATE (p)-[:PATIENT_HAS_MEASUREMENT]->(h);

MATCH (p:Patient {id: 2}), (r:RiskFactor {patient_id: 2})
CREATE (p)-[:PATIENT_HAS_RISK]->(r);

MATCH (p:Patient {id: 3}), (c:Condition {patient_id: 3})
CREATE (p)-[:PATIENT_HAS_CONDITION]->(c);

MATCH (p:Patient {id: 3}), (h:Hormone {patient_id: 3})
CREATE (p)-[:PATIENT_HAS_MEASUREMENT]->(h);

MATCH (p:Patient {id: 3}), (r:RiskFactor {patient_id: 3})
CREATE (p)-[:PATIENT_HAS_RISK]->(r);