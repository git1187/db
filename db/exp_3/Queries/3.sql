SELECT
	u.address, p.panel_type
FROM 
	panel as p,
	install as i,
	user as u
WHERE
	i.pv_id = p.pv_id AND
	i.house_no = u.house_no AND
	p.panel_type = "Monocrystalline"
GROUP BY
	u.address;
