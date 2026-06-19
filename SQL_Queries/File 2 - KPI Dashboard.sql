-- KPI Dashboard

-- getting total customer's count
SELECT COUNT(*) AS Total_Customers
FROM customers;

-- getting churned customers count
SELECT COUNT(*) AS Churned_Customers
FROM customers
WHERE Churn='Yes';

-- churn rate
SELECT
ROUND(
100 * SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)
/ COUNT(*),2
) AS Churn_Rate
FROM customers;

-- getting total revenue
SELECT
ROUND(SUM(MonthlyCharges),2)
AS Total_Revenue
FROM customers;

SELECT
ROUND(AVG(MonthlyCharges),2)
AS Avg_Revenue_Per_Customer
FROM customers;