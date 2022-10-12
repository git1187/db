--min date--
SELECT
	MIN(i.install_date)
FROM
	install as i,
	vendor as v
WHERE
	i.tin_no = v.tin_no;
	
--details of vendors--
SELECT
	v.*
FROM
	install as i,
	vendor as v
WHERE
	i.tin_no = v.tin_no AND
	i.install_date IN (
		SELECT
			MIN(i.install_date)
		FROM
			install as i,
			vendor as v
		WHERE
			i.tin_no = v.tin_no
		);
	
