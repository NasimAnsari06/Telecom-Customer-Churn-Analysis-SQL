WITH ChurnSummary AS
(
SELECT
Contract,
COUNT(*) Customers
FROM customers
GROUP BY Contract
)

SELECT *
FROM ChurnSummary;

-- Subquery
SELECT *
FROM customers
WHERE MonthlyCharges >
(
SELECT AVG(MonthlyCharges)
FROM customers
);

-- Correlated Subquery
SELECT CustomerID,
MonthlyCharges
FROM customers c1
WHERE MonthlyCharges >
(
SELECT AVG(MonthlyCharges)
FROM customers c2
WHERE c1.Contract=c2.Contract
);