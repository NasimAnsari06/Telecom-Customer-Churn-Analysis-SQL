-- Revenue Ranking

SELECT
customerID,
MonthlyCharges,
RANK() OVER(
ORDER BY MonthlyCharges DESC
) AS RevenueRank
FROM customers;

-- Customer Segments

SELECT
customerID,
MonthlyCharges,
NTILE(4) OVER(
ORDER BY MonthlyCharges DESC
) AS CustomerSegment
FROM customers;