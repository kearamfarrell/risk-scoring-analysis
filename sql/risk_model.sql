WITH scored AS (
  SELECT
    age,
    sex,
    bmi,
    children,
    smoker,
    region,
    charges,

    (
      CASE WHEN smoker IS TRUE THEN 40 ELSE 0 END +
      CASE WHEN bmi >= 30 THEN 30
           WHEN bmi >= 25 THEN 15
           ELSE 0 END +
      CASE WHEN charges > 30000 THEN 30
           WHEN charges > 15000 THEN 15
           ELSE 0 END
    ) AS risk_score

  FROM `claims-cost-analysis.insurance_project.insurance`
)

SELECT *,
  CASE 
    WHEN risk_score >= 70 THEN 'High Risk'
    WHEN risk_score >= 40 THEN 'Medium Risk'
    ELSE 'Low Risk'
  END AS risk_category
FROM scored;
