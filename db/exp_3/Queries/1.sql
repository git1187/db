--only domestic installations--
SELECT
	v.*
FROM
	vendor as v,
	install as i,
	user as u
WHERE 
	i.tin_no = v.tin_no AND
	u.house_no = i.house_no AND
	u.user_usage = "Domestic";
	
--domestic and max installations--
SELECT
	COUNT(v.tin_no), v.name
FROM
	vendor as v,
	install as i,
	user as u
WHERE 
	i.tin_no = v.tin_no AND
	u.house_no = i.house_no AND
	u.user_usage = "Domestic"
GROUP BY
	v.tin_no
HAVING 
	COUNT(v.tin_no) >= ALL (
		SELECT COUNT(v.tin_no)
		FROM 
			vendor as v,
			install as i,
			user as u
		WHERE 
			i.tin_no = v.tin_no AND
			u.house_no = i.house_no AND
			u.user_usage = "Domestic"
		GROUP BY
			v.tin_no
	);
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
