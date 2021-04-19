SELECT *
FROM transaction
GROUP BY DATE(date), hour(date) DIV 2;