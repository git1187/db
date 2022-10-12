SELECT
	m.*
FROM
	musician as m,
	musician_instrument as mi
WHERE
	m.musician_ssn = mi.musician_ssn 
GROUP BY
	mi.musician_ssn;
