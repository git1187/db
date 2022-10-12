SELECT d.*
FROM 
	drug as d,
	pharmacy as p,
	drug_pharmacy_sell as sell
WHERE
	d.trade_name = sell.drug_trade_name AND
	p.name = sell.pharmacy_name
GROUP BY
	sell.drug_trade_name
HAVING
	COUNT(sell.pharmacy_name) = (
		SELECT COUNT(*) 
		FROM pharmacy
	);
