SELECT 
	COUNT(ms.musician_ssn) as "Total Musicians for song",
	s.*
FROM 
	musician_song as ms,
	song as s
WHERE
	s.song_id = ms.song_id
GROUP BY
	ms.song_id
HAVING 
	COUNT(ms.musician_ssn) > 3;
