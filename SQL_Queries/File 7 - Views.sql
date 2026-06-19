-- Churn Customers View

CREATE VIEW churn_customers AS
SELECT *
FROM customers
WHERE Churn='Yes';

-- High Value Customers View

CREATE VIEW high_value_customers AS
SELECT *
FROM customers
WHERE MonthlyCharges > 80;