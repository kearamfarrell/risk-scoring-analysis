SELECT 
  smoker,
  COUNT(*) AS total_claims,
  AVG(charges) AS avg_cost,
  MIN(charges) AS min_cost,
  MAX(charges) AS max_cost
FROM `claims-cost-analysis.insurance_project.insurance`
GROUP BY smoker;
