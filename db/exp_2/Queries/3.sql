SELECT
	*
FROM
	doctor as d
WHERE
	d.year_of_exp = (
		SELECT MAX(year_of_exp)
		FROM doctor
	)
