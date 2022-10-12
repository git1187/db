--sub query to get total instruments--
SELECT COUNT(*) FROM instrument;

--query to check count of musicians and instrument--
SELECT
	mi.*
FROM
	musician as m,
	instrument as i,
	musician_instrument as mi
WHERE
	m.musician_ssn = mi.musician_ssn AND
	i.instrument_id = mi.instrument_id;

SELECT
	m.*,
	COUNT(mi.instrument_id) as "Number of instruments played by musician"
FROM
	musician as m,
	instrument as i,
	musician_instrument as mi
WHERE
	m.musician_ssn = mi.musician_ssn AND
	i.instrument_id = mi.instrument_id
GROUP BY
	mi.musician_ssn
HAVING
	COUNT(mi.musician_ssn) = (SELECT COUNT(*) FROM instrument);
