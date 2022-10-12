-- sub query to get producers--
SELECT
	m.musician_ssn
FROM
	musician as m,
	album as a
WHERE
	m.musician_ssn = a.producer_ssn;
	
--full query--
SELECT
	m.musician_name as "Musicians who has not produced any albums"
FROM 
	musician as m
WHERE m.musician_ssn NOT IN (
	SELECT m.musician_ssn
	FROM
		musician as m,
		album as a
	WHERE
		m.musician_ssn = a.producer_ssn
	);
