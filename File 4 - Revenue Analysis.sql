-- Revenue Analysis

SELECT
Contract,
ROUND(SUM(MonthlyCharges),2) AS Revenue
FROM customers
GROUP BY Contract
ORDER BY Revenue DESC;

SELECT
ROUND(SUM(MonthlyCharges),2)
AS Revenue_Lost
FROM customers
WHERE Churn='Yes';

SELECT
PaymentMethod,
ROUND(SUM(MonthlyCharges),2)
AS Revenue
FROM customers
GROUP BY PaymentMethod
ORDER BY Revenue DESC;