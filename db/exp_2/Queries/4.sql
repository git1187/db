SELECT
	contract.phar_comp_name,
	company.address,
	company.phone_number,
	COUNT(contract.pharmacy_name)
FROM
	phar_company as company,
	phar_comp_pharmacy_contract as contract,
	pharmacy as p
WHERE
	company.name = contract.phar_comp_name AND
	p.name = contract.pharmacy_name
GROUP BY
	contract.phar_comp_name
HAVING
	COUNT(contract.pharmacy_name) >= 5;
	

SELECT
	contract.pcname,
	company.pcaddr,
	company.pcphone,
	COUNT(contract.phname)
FROM
	pharma_co as company,
	contract,
	pharmacy as p
WHERE
	company.pcname = contract.pcname AND
	p.phname = contract.phname
GROUP BY
	contract.pcname
HAVING
	COUNT(contract.phname) >= 5;
