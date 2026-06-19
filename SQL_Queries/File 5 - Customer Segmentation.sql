-- Top 10 Highest Paying Customers

SELECT
customerID,
MonthlyCharges
FROM customers
ORDER BY MonthlyCharges DESC
LIMIT 10;

-- Senior Citizens

SELECT
SeniorCitizen,
COUNT(*) AS Total_Customers
FROM customers
GROUP BY SeniorCitizen;