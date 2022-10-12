--highest capacity = lowest number of users--


--check users and number of installations of panels--
SELECT
	i.tin_no, u.house_no, u.address, p.capacity
FROM
	install as i,
	user as u,
	panel as p
WHERE
	i.house_no = u.house_no AND
	p.pv_id = i.pv_id AND
	p.capacity = (
		SELECT MAX(capacity)
		FROM panel
	);


--get number of houses--
SELECT
	u.address, COUNT(u.house_no)
FROM 
	install as i,
	user as u
WHERE
	i.house_no = u.house_no
GROUP BY
	u.house_no;



--min installations dynamic value--
SELECT
	u.address,
	COUNT(u.house_no) as "Number of houses"
FROM 
	install as i,
	user as u
WHERE
	i.house_no = u.house_no
GROUP BY
	u.house_no
HAVING
	COUNT(u.house_no) <= ALL (
		SELECT
			COUNT(u.house_no)
		FROM 
			install as i,
			user as u
		WHERE
			i.house_no = u.house_no
		GROUP BY
			u.house_no
	);
	
	
--CHANGES--























	
	
	
	
	
	
	
	
