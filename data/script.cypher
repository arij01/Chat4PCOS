// Patient Nodes
CREATE (:Patient { id: 1, Age: 28, Weight: 44.6, Height: 152.0, BMI: 19.29 });
CREATE (:Patient { id: 2, Age: 36, Weight: 65.0, Height: 161.5, BMI: 25.06 });
CREATE (:Patient { id: 3, Age: 33, Weight: 68.8, Height: 165.0, BMI: 25.22 });
CREATE (:Patient { id: 4, Age: 37, Weight: 65.0, Height: 148.0, BMI: 29.18 });
CREATE (:Patient { id: 5, Age: 25, Weight: 52.0, Height: 161.0, BMI: 20.11 });
CREATE (:Patient { id: 6, Age: 36, Weight: 74.1, Height: 165.0, BMI: 27.18 });
CREATE (:Patient { id: 7, Age: 34, Weight: 64.0, Height: 156.0, BMI: 26.23 });
CREATE (:Patient { id: 8, Age: 33, Weight: 58.5, Height: 159.0, BMI: 23.06 });
CREATE (:Patient { id: 9, Age: 32, Weight: 40.0, Height: 158.0, BMI: 16.00 });
CREATE (:Patient { id: 10, Age: 36, Weight: 52.0, Height: 150.0, BMI: 23.11 });
CREATE (:Patient { id: 11, Age: 20, Weight: 71.0, Height: 163.0, BMI: 26.68 });
CREATE (:Patient { id: 12, Age: 26, Weight: 49.0, Height: 160.0, BMI: 19.14 });
CREATE (:Patient { id: 13, Age: 25, Weight: 74.0, Height: 152.0, BMI: 32.18 });
CREATE (:Patient { id: 14, Age: 38, Weight: 50.0, Height: 152.0, BMI: 21.61 });
CREATE (:Patient { id: 15, Age: 34, Weight: 57.3, Height: 162.0, BMI: 21.81 });
CREATE (:Patient { id: 16, Age: 38, Weight: 80.5, Height: 154.0, BMI: 34.09 });
CREATE (:Patient { id: 17, Age: 29, Weight: 43.0, Height: 148.0, BMI: 19.62 });
CREATE (:Patient { id: 18, Age: 36, Weight: 69.2, Height: 160.0, BMI: 27.02 });
CREATE (:Patient { id: 19, Age: 31, Weight: 52.4, Height: 159.0, BMI: 20.65 });
CREATE (:Patient { id: 20, Age: 30, Weight: 85.0, Height: 165.0, BMI: 31.22 });
CREATE (:Patient { id: 21, Age: 25, Weight: 64.0, Height: 156.0, BMI: 26.20 });
CREATE (:Patient { id: 22, Age: 38, Weight: 50.0, Height: 156.0, BMI: 20.47 });
CREATE (:Patient { id: 23, Age: 34, Weight: 64.2, Height: 155.0, BMI: 26.70 });
CREATE (:Patient { id: 24, Age: 28, Weight: 65.0, Height: 152.0, BMI: 28.14 });
CREATE (:Patient { id: 25, Age: 34, Weight: 63.0, Height: 158.0, BMI: 25.30 });

// Condition Nodes
CREATE (:Condition { id: 1, patient_id: 1, PCOS_YN: 0, Cycle_RI: 2, Cycle_length_days: 5 });
CREATE (:Condition { id: 2, patient_id: 2, PCOS_YN: 0, Cycle_RI: 2, Cycle_length_days: 5 });
CREATE (:Condition { id: 3, patient_id: 3, PCOS_YN: 1, Cycle_RI: 2, Cycle_length_days: 5 });
CREATE (:Condition { id: 4, patient_id: 4, PCOS_YN: 0, Cycle_RI: 2, Cycle_length_days: 5 });
CREATE (:Condition { id: 5, patient_id: 5, PCOS_YN: 0, Cycle_RI: 2, Cycle_length_days: 5 });
CREATE (:Condition { id: 6, patient_id: 6, PCOS_YN: 0, Cycle_RI: 2, Cycle_length_days: 5 });
CREATE (:Condition { id: 7, patient_id: 7, PCOS_YN: 0, Cycle_RI: 2, Cycle_length_days: 5 });
CREATE (:Condition { id: 8, patient_id: 8, PCOS_YN: 0, Cycle_RI: 2, Cycle_length_days: 5 });
CREATE (:Condition { id: 9, patient_id: 9, PCOS_YN: 0, Cycle_RI: 2, Cycle_length_days: 5 });
CREATE (:Condition { id: 10, patient_id: 10, PCOS_YN: 0, Cycle_RI: 4, Cycle_length_days: 2 });
CREATE (:Condition { id: 11, patient_id: 11, PCOS_YN: 0, Cycle_RI: 2, Cycle_length_days: 5 });
CREATE (:Condition { id: 12, patient_id: 12, PCOS_YN: 0, Cycle_RI: 2, Cycle_length_days: 5 });
CREATE (:Condition { id: 13, patient_id: 13, PCOS_YN: 1, Cycle_RI: 4, Cycle_length_days: 2 });
CREATE (:Condition { id: 14, patient_id: 14, PCOS_YN: 0, Cycle_RI: 2, Cycle_length_days: 5 });
CREATE (:Condition { id: 15, patient_id: 15, PCOS_YN: 0, Cycle_RI: 2, Cycle_length_days: 5 });
CREATE (:Condition { id: 16, patient_id: 16, PCOS_YN: 0, Cycle_RI: 2, Cycle_length_days: 5 });
CREATE (:Condition { id: 17, patient_id: 17, PCOS_YN: 0, Cycle_RI: 2, Cycle_length_days: 5 });
CREATE (:Condition { id: 18, patient_id: 18, PCOS_YN: 0, Cycle_RI: 2, Cycle_length_days: 5 });
CREATE (:Condition { id: 19, patient_id: 19, PCOS_YN: 0, Cycle_RI: 2, Cycle_length_days: 5 });
CREATE (:Condition { id: 20, patient_id: 20, PCOS_YN: 1, Cycle_RI: 4, Cycle_length_days: 7 });
CREATE (:Condition { id: 21, patient_id: 21, PCOS_YN: 0, Cycle_RI: 2, Cycle_length_days: 6 });
CREATE (:Condition { id: 22, patient_id: 22, PCOS_YN: 0, Cycle_RI: 4, Cycle_length_days: 9 });
CREATE (:Condition { id: 23, patient_id: 23, PCOS_YN: 0, Cycle_RI: 2, Cycle_length_days: 5 });
CREATE (:Condition { id: 24, patient_id: 24, PCOS_YN: 0, Cycle_RI: 2, Cycle_length_days: 5 });
CREATE (:Condition { id: 25, patient_id: 25, PCOS_YN: 1, Cycle_RI: 2, Cycle_length_days: 5 });

// Hormone Nodes
CREATE (:Hormone { id: 1, patient_id: 1, FSH_mIU_mL: 7.95, LH_mIU_mL: 3.68, FSH_LH: 2.16, AMH_ng_mL: 2.07, TSH_mIU_L: 0.68 });
CREATE (:Hormone { id: 2, patient_id: 2, FSH_mIU_mL: 6.73, LH_mIU_mL: 1.09, FSH_LH: 6.16, AMH_ng_mL: 1.53, TSH_mIU_L: 3.16 });
CREATE (:Hormone { id: 3, patient_id: 3, FSH_mIU_mL: 5.54, LH_mIU_mL: 0.88, FSH_LH: 6.30, AMH_ng_mL: 6.63, TSH_mIU_L: 2.54 });
CREATE (:Hormone { id: 4, patient_id: 4, FSH_mIU_mL: 8.06, LH_mIU_mL: 2.36, FSH_LH: 3.41, AMH_ng_mL: 1.22, TSH_mIU_L: 16.41 });
CREATE (:Hormone { id: 5, patient_id: 5, FSH_mIU_mL: 3.98, LH_mIU_mL: 0.9, FSH_LH: 4.42, AMH_ng_mL: 2.26, TSH_mIU_L: 3.57 });
CREATE (:Hormone { id: 6, patient_id: 6, FSH_mIU_mL: 3.24, LH_mIU_mL: 1.07, FSH_LH: 3.03, AMH_ng_mL: 6.74, TSH_mIU_L: 1.6 });
CREATE (:Hormone { id: 7, patient_id: 7, FSH_mIU_mL: 2.85, LH_mIU_mL: 0.31, FSH_LH: 9.19, AMH_ng_mL: 3.05, TSH_mIU_L: 1.51 });
CREATE (:Hormone { id: 8, patient_id: 8, FSH_mIU_mL: 4.86, LH_mIU_mL: 3.07, FSH_LH: 1.58, AMH_ng_mL: 1.54, TSH_mIU_L: 12.18 });
CREATE (:Hormone { id: 9, patient_id: 9, FSH_mIU_mL: 3.76, LH_mIU_mL: 3.02, FSH_LH: 1.24, AMH_ng_mL: 1, TSH_mIU_L: 1.51 });
CREATE (:Hormone { id: 10, patient_id: 10, FSH_mIU_mL: 2.8, LH_mIU_mL: 1.51, FSH_LH: 1.85, AMH_ng_mL: 1.61, TSH_mIU_L: 6.65 });
CREATE (:Hormone { id: 11, patient_id: 11, FSH_mIU_mL: 4.89, LH_mIU_mL: 2.02, FSH_LH: 2.42, AMH_ng_mL: 4.47, TSH_mIU_L: 1.56 });
CREATE (:Hormone { id: 12, patient_id: 12, FSH_mIU_mL: 4.09, LH_mIU_mL: 1.47, FSH_LH: 2.78, AMH_ng_mL: 1.67, TSH_mIU_L: 3.98 });
CREATE (:Hormone { id: 13, patient_id: 13, FSH_mIU_mL: 2.0, LH_mIU_mL: 1.51, FSH_LH: 1.32, AMH_ng_mL: 7.94, TSH_mIU_L: 6.51 });
CREATE (:Hormone { id: 14, patient_id: 14, FSH_mIU_mL: 4.84, LH_mIU_mL: 0.71, FSH_LH: 6.82, AMH_ng_mL: 2.38, TSH_mIU_L: 1.48 });
CREATE (:Hormone { id: 15, patient_id: 15, FSH_mIU_mL: 7.45, LH_mIU_mL: 3.71, FSH_LH: 2.01, AMH_ng_mL: 0.88, TSH_mIU_L: 1.51 });
CREATE (:Hormone { id: 16, patient_id: 16, FSH_mIU_mL: 9.51, LH_mIU_mL: 2.51, FSH_LH: 3.79, AMH_ng_mL: 0.69, TSH_mIU_L: 1.18 });
CREATE (:Hormone { id: 17, patient_id: 17, FSH_mIU_mL: 2.02, LH_mIU_mL: 0.65, FSH_LH: 3.11, AMH_ng_mL: 3.78, TSH_mIU_L: 1.98 });
CREATE (:Hormone { id: 18, patient_id: 18, FSH_mIU_mL: 4.86, LH_mIU_mL: 2.96, FSH_LH: 1.64, AMH_ng_mL: 1.92, TSH_mIU_L: 5 });
CREATE (:Hormone { id: 19, patient_id: 19, FSH_mIU_mL: 6.05, LH_mIU_mL: 1.05, FSH_LH: 5.76, AMH_ng_mL: 1, TSH_mIU_L: 3.19 });
CREATE (:Hormone { id: 20, patient_id: 20, FSH_mIU_mL: 1.89, LH_mIU_mL: 0.81, FSH_LH: 2.33, AMH_ng_mL: 2.07, TSH_mIU_L: 2.87 });
CREATE (:Hormone { id: 21, patient_id: 21, FSH_mIU_mL: 2.82, LH_mIU_mL: 1.3, FSH_LH: 2.17, AMH_ng_mL: 2.85, TSH_mIU_L: 1.86 });
CREATE (:Hormone { id: 22, patient_id: 22, FSH_mIU_mL: 3.18, LH_mIU_mL: 2.18, FSH_LH: 1.46, AMH_ng_mL: 2.13, TSH_mIU_L: 5.71 });
CREATE (:Hormone { id: 23, patient_id: 23, FSH_mIU_mL: 4.08, LH_mIU_mL: 2.3, FSH_LH: 1.77, AMH_ng_mL: 4.13, TSH_mIU_L: 1.25 });
CREATE (:Hormone { id: 24, patient_id: 24, FSH_mIU_mL: 6.41, LH_mIU_mL: 1.69, FSH_LH: 3.79, AMH_ng_mL: 2.5, TSH_mIU_L: 0.45 });
CREATE (:Hormone { id: 25, patient_id: 25, FSH_mIU_mL: 5.34, LH_mIU_mL: 0.89, FSH_LH: 6.00, AMH_ng_mL: 1.89, TSH_mIU_L: 0.65 });

// RiskFactor Nodes
CREATE (:RiskFactor { id: 1, patient_id: 1, Weight_gain_YN: 0, Hair_growth_YN: 0, Skin_darkening_YN: 0, Pimples_YN: 0, Fast_food_YN: 1, Reg_Exercise_YN: 0 });
CREATE (:RiskFactor { id: 2, patient_id: 2, Weight_gain_YN: 1, Hair_growth_YN: 1, Skin_darkening_YN: 0, Pimples_YN: 1, Fast_food_YN: 1, Reg_Exercise_YN: 0 });
CREATE (:RiskFactor { id: 3, patient_id: 3, Weight_gain_YN: 1, Hair_growth_YN: 0, Skin_darkening_YN: 1, Pimples_YN: 0, Fast_food_YN: 0, Reg_Exercise_YN: 1 });
CREATE (:RiskFactor { id: 4, patient_id: 4, Weight_gain_YN: 0, Hair_growth_YN: 0, Skin_darkening_YN: 0, Pimples_YN: 0, Fast_food_YN: 0, Reg_Exercise_YN: 0 });
CREATE (:RiskFactor { id: 5, patient_id: 5, Weight_gain_YN: 0, Hair_growth_YN: 0, Skin_darkening_YN: 0, Pimples_YN: 0, Fast_food_YN: 0, Reg_Exercise_YN: 0 });
CREATE (:RiskFactor { id: 6, patient_id: 6, Weight_gain_YN: 1, Hair_growth_YN: 0, Skin_darkening_YN: 0, Pimples_YN: 0, Fast_food_YN: 0, Reg_Exercise_YN: 0 });
CREATE (:RiskFactor { id: 7, patient_id: 7, Weight_gain_YN: 0, Hair_growth_YN: 0, Skin_darkening_YN: 0, Pimples_YN: 0, Fast_food_YN: 0, Reg_Exercise_YN: 0 });
CREATE (:RiskFactor { id: 8, patient_id: 8, Weight_gain_YN: 0, Hair_growth_YN: 0, Skin_darkening_YN: 0, Pimples_YN: 0, Fast_food_YN: 0, Reg_Exercise_YN: 0 });
CREATE (:RiskFactor { id: 9, patient_id: 9, Weight_gain_YN: 0, Hair_growth_YN: 0, Skin_darkening_YN: 0, Pimples_YN: 0, Fast_food_YN: 0, Reg_Exercise_YN: 1 });
CREATE (:RiskFactor { id: 10, patient_id: 10, Weight_gain_YN: 0, Hair_growth_YN: 0, Skin_darkening_YN: 0, Pimples_YN: 0, Fast_food_YN: 0, Reg_Exercise_YN: 0 });
CREATE (:RiskFactor { id: 11, patient_id: 11, Weight_gain_YN: 0, Hair_growth_YN: 0, Skin_darkening_YN: 0, Pimples_YN: 0, Fast_food_YN: 1, Reg_Exercise_YN: 1 });
CREATE (:RiskFactor { id: 12, patient_id: 12, Weight_gain_YN: 0, Hair_growth_YN: 0, Skin_darkening_YN: 0, Pimples_YN: 0, Fast_food_YN: 0, Reg_Exercise_YN: 0 });
CREATE (:RiskFactor { id: 13, patient_id: 13, Weight_gain_YN: 1, Hair_growth_YN: 1, Skin_darkening_YN: 1, Pimples_YN: 1, Fast_food_YN: 1, Reg_Exercise_YN: 1 });
CREATE (:RiskFactor { id: 14, patient_id: 14, Weight_gain_YN: 0, Hair_growth_YN: 0, Skin_darkening_YN: 0, Pimples_YN: 0, Fast_food_YN: 0, Reg_Exercise_YN: 0 });
CREATE (:RiskFactor { id: 15, patient_id: 15, Weight_gain_YN: 0, Hair_growth_YN: 0, Skin_darkening_YN: 0, Pimples_YN: 0, Fast_food_YN: 0, Reg_Exercise_YN: 0 });
CREATE (:RiskFactor { id: 16, patient_id: 16, Weight_gain_YN: 0, Hair_growth_YN: 0, Skin_darkening_YN: 1, Pimples_YN: 0, Fast_food_YN: 0, Reg_Exercise_YN: 0 });
CREATE (:RiskFactor { id: 17, patient_id: 17, Weight_gain_YN: 0, Hair_growth_YN: 0, Skin_darkening_YN: 0, Pimples_YN: 0, Fast_food_YN: 0, Reg_Exercise_YN: 0 });
CREATE (:RiskFactor { id: 18, patient_id: 18, Weight_gain_YN: 1, Hair_growth_YN: 0, Skin_darkening_YN: 0, Pimples_YN: 0, Fast_food_YN: 1, Reg_Exercise_YN: 0 });
CREATE (:RiskFactor { id: 19, patient_id: 19, Weight_gain_YN: 1, Hair_growth_YN: 1, Skin_darkening_YN: 1, Pimples_YN: 1, Fast_food_YN: 1, Reg_Exercise_YN: 0 });
CREATE (:RiskFactor { id: 20, patient_id: 20, Weight_gain_YN: 1, Hair_growth_YN: 1, Skin_darkening_YN: 0, Pimples_YN: 1, Fast_food_YN: 1, Reg_Exercise_YN: 0 });
CREATE (:RiskFactor { id: 21, patient_id: 21, Weight_gain_YN: 1, Hair_growth_YN: 1, Skin_darkening_YN: 0, Pimples_YN: 1, Fast_food_YN: 1, Reg_Exercise_YN: 1 });
CREATE (:RiskFactor { id: 22, patient_id: 22, Weight_gain_YN: 0, Hair_growth_YN: 0, Skin_darkening_YN: 0, Pimples_YN: 0, Fast_food_YN: 0, Reg_Exercise_YN: 0 });
CREATE (:RiskFactor { id: 23, patient_id: 23, Weight_gain_YN: 1, Hair_growth_YN: 0, Skin_darkening_YN: 0, Pimples_YN: 1, Fast_food_YN: 0, Reg_Exercise_YN: 1 });
CREATE (:RiskFactor { id: 24, patient_id: 24, Weight_gain_YN: 1, Hair_growth_YN: 1, Skin_darkening_YN: 0, Pimples_YN: 0, Fast_food_YN: 1, Reg_Exercise_YN: 1 });
CREATE (:RiskFactor { id: 25, patient_id: 25, Weight_gain_YN: 0, Hair_growth_YN: 1, Skin_darkening_YN: 0, Pimples_YN: 1, Fast_food_YN: 0, Reg_Exercise_YN: 1 });

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