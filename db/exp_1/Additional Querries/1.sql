--number of albums per musician--
SELECT
	COUNT(a.album_id) as "number of albums",
	a.producer_ssn
FROM
	musician as m,
	album as a
WHERE
	m.musician_ssn = a.producer_ssn
GROUP BY
	a.producer_ssn;

--minimum number of albums--
SELECT
	COUNT(a.album_id) as "number of albums",
	a.producer_ssn
FROM
	musician as m,
	album as a
WHERE
	m.musician_ssn = a.producer_ssn
GROUP BY
	a.producer_ssn
HAVING
	COUNT(a.album_id) <= ALL (
		SELECT
			COUNT(a.album_id)
		FROM
			musician as m,
			album as a
		WHERE
			m.musician_ssn = a.producer_ssn
		GROUP BY
			a.producer_ssn

	);


