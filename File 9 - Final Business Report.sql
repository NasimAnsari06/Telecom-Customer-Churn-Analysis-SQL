-- Final Report

SELECT COUNT(*) AS Total_Customers
FROM customers;

SELECT COUNT(*) AS Churned_Customers
FROM customers
WHERE Churn='Yes';

SELECT
ROUND(SUM(MonthlyCharges),2)
AS Revenue_Lost
FROM customers
WHERE Churn='Yes';

SELECT
customerID,
MonthlyCharges
FROM customers
ORDER BY MonthlyCharges DESC
LIMIT 10;