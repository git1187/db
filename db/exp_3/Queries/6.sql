--sales in commercial places--

SELECT
	s.pv_id, u.user_usage, p.panel_type
FROM
	user as u,
	sell as s,
	panel as p,
	install as i
WHERE
	i.pv_id = p.pv_id AND
	i.house_no = u.house_no AND
	s.pv_id = p.pv_id AND
	u.user_usage = "Commercial"
	
--sub query to total sales--
SELECT COUNT(*) FROM sell;

--avg sales in commercial--
SELECT
	COUNT(s.pv_id) as "total sales",
	COUNT(s.pv_id) / (SELECT COUNT(*) FROM sell) as "AVG sales",
	p.panel_type
FROM
	user as u,
	sell as s,
	panel as p,
	install as i
WHERE
	i.pv_id = p.pv_id AND
	i.house_no = u.house_no AND
	s.pv_id = p.pv_id AND
	u.user_usage = "Commercial"
GROUP BY
	p.panel_type;
