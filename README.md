# risk-scoring-analysis

## Overview
This project builds a risk scoring model using healthcare insurance claims data. The goal is to segment patients into risk categories and analyze the main drivers of healthcare costs using SQL in BigQuery.

The final output is a structured dataset used for analysis and visualization.

---

## Objective
- Build a rule-based risk scoring system using SQL  
- Classify patients into Low, Medium, and High Risk groups  
- Identify key drivers of healthcare costs such as smoking status and BMI  
- Produce a clean dataset for reporting and visualization  

---

## Tools Used
- SQL (Google BigQuery)  
- Excel (data export and validation)  
- Power BI (dashboard development)  

---

## Dataset
Source table:
`claims-cost-analysis.insurance_project.insurance`

Fields used:
- age  
- sex  
- bmi  
- children  
- smoker  
- region  
- charges  

---

## Methodology

### Risk Scoring
A rule-based scoring model was created using:
- Smoking status  
- BMI thresholds  
- Claim charge thresholds  

These factors were combined to generate a risk_score.

---

### Risk Categories
Patients were segmented into:
- Low Risk  
- Medium Risk  
- High Risk  

based on the calculated risk_score.

---

### Analysis Performed
- Cost differences between smokers and non-smokers  
- Regional variations in healthcare charges  
- Distribution of risk categories across the dataset  

---

## Output
- Final dataset exported as CSV (`risk_scored_data.csv`)  
- SQL scripts used for data processing and analysis  
- Power BI dashboard (to be added or refined)

---

## Key Insights
- Smoking status is the strongest driver of higher healthcare costs  
- Higher BMI is associated with increased risk scores  
- Healthcare charges vary significantly by region  
- High-risk patients account for a disproportionate share of total costs  

---

## Repository Structure
risk-scoring-analysis/
├── sql/
│ ├── risk_model.sql
│ ├── smoker_impact.sql
│ ├── regional_analysis.sql
│
├── data/
│ └── risk_scored_data.csv
│
├── README.md


---

## Next Steps
- Add Power BI dashboard visualizations  
- Improve model with additional risk factors  
- Expand analysis to predictive modeling
