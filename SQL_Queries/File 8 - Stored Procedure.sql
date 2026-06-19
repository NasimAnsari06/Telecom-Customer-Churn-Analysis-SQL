DELIMITER $$

CREATE PROCEDURE RevenueByContract()
BEGIN

SELECT
Contract,
SUM(MonthlyCharges) Revenue
FROM customers
GROUP BY Contract;

END $$

DELIMITER ;