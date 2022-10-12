--sub query to get total musicians--
SELECT COUNT(musician_ssn) FROM musician;

--query to check which instruments are repeated--
SELECT
	COUNT(musician_ssn) FROM musician;
SELECT
	*
FROM 
	instrument as i,
	musician_instrument as mi
WHERE
	i.instrument_id = mi.instrument_id;

--original query--
SELECT
	i.instrument_name,
	COUNT(mi.musician_ssn) as "Total musicians playing the instrument",
	(SELECT COUNT(musician_ssn) FROM musician) as "Total musicians",
	COUNT(i.instrument_id) / (SELECT COUNT(musician_ssn) FROM musician)
		as "Average number of musicians who play instrument"
FROM 
	instrument as i,
	musician_instrument as mi
WHERE
	i.instrument_id = mi.instrument_id
GROUP BY
	mi.instrument_id;
