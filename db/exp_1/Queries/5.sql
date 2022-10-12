--ssn who plays guitar--
SELECT
	mi.musician_ssn
FROM 
	musician_instrument as mi,
	instrument as i
WHERE
	mi.instrument_id = i.instrument_id AND
	i.instrument_name = "Guitar";
	

--ssn who plays flute--
SELECT
	mi.musician_ssn
FROM 
	musician_instrument as mi,
	instrument as i
WHERE
	mi.instrument_id = i.instrument_id AND
	i.instrument_name = "Flute";


--album details of producer who plays guitar and flute--
SELECT
	*
FROM
	album as a
WHERE
	a.producer_ssn IN 
	(
		SELECT
			mi.musician_ssn
		FROM 
			musician_instrument as mi,
			instrument as i
		WHERE
			mi.instrument_id = i.instrument_id AND
			i.instrument_name = "Guitar"
	)
	AND
	a.producer_ssn IN
	(
		SELECT
			mi.musician_ssn
		FROM 
			musician_instrument as mi,
			instrument as i
		WHERE
			mi.instrument_id = i.instrument_id AND
			i.instrument_name = "Flute"
	);


--rough--
SELECT
	ms.musician_ssn,
	COUNT(ms.song_id) as "Total songs",
	AVG(ms.song_id) as "Avg songs"
FROM
	musician_song as ms
GROUP BY
	ms.musician_ssn




SELECT
	musician_ssn,
	COUNT(song_id),
	(SELECT COUNT(*) FROM musician) as "total musician"
FROM musician_song
GROUP BY musician_ssn
HAVING 
	COUNT(song_id) > ( SELECT COUNT(*) FROM musician )


SELECT
	SUM (
	select 
		COUNT(song_id)
	from song
	group by album_id
	)
FROM 
	song
	
select 
	album_id,
	SUM(song_id) as "total songs"
from song
group by album_id

	
	
	
	
	
	
	
	
	
	
