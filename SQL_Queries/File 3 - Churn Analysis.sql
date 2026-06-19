-- Churn By Contract Type

SELECT
Contract,
COUNT(*) AS Customers,
SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS Churned,
ROUND(
100 * SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)
/ COUNT(*),2
) AS Churn_Rate
FROM customers
GROUP BY Contract
ORDER BY Churn_Rate DESC;

-- Churn By Internet Service

SELECT
InternetService,
COUNT(*) AS Customers,
SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS Churned,
ROUND(
100 * SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)
/ COUNT(*),2
) AS Churn_Rate
FROM customers
GROUP BY InternetService
ORDER BY Churn_Rate DESC;