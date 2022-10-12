--both panels are installed (mono and poly)--

--Mono--
SELECT
	p.panel_type, u.house_no
FROM 
	install as i,
	panel as p,
	user as u
WHERE
	i.pv_id = p.pv_id AND
	i.house_no = u.house_no AND
	p.panel_type = "Monocrystalline";

--Poly--
SELECT
	p.panel_type, u.house_no
FROM 
	install as i,
	panel as p,
	user as u
WHERE
	i.pv_id = p.pv_id AND
	i.house_no = u.house_no AND
	p.panel_type = "Polycrystalline";
	
--user details where both panels are installed--
SELECT
	u.address,
	u.house_no
FROM
	user as u
WHERE
	u.house_no IN
		(
		SELECT
			u.house_no
		FROM 
			install as i,
			panel as p,
			user as u
		WHERE
			i.pv_id = p.pv_id AND
			i.house_no = u.house_no AND
			p.panel_type = "Monocrystalline"	
		) AND
	u.house_no IN
		(
		SELECT
			u.house_no
		FROM 
			install as i,
			panel as p,
			user as u
		WHERE
			i.pv_id = p.pv_id AND
			i.house_no = u.house_no AND
			p.panel_type = "Polycrystalline"
		);


--total sales in each place--
SELECT
	u.address,
	COUNT(u.house_no) as "number of installations in address",
	COUNT(u.house_no) * (40000+60000) as "Installation charges"
FROM
	user as u
WHERE
	u.house_no IN
		(
		SELECT
			u.house_no
		FROM 
			install as i,
			panel as p,
			user as u
		WHERE
			i.pv_id = p.pv_id AND
			i.house_no = u.house_no AND
			p.panel_type = "Monocrystalline"	
		) AND
	u.house_no IN
		(
		SELECT
			u.house_no
		FROM 
			install as i,
			panel as p,
			user as u
		WHERE
			i.pv_id = p.pv_id AND
			i.house_no = u.house_no AND
			p.panel_type = "Polycrystalline"
		)
GROUP BY
	u.address;






























