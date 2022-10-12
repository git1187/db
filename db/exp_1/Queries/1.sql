SELECT
	m.musician_name as "Musician",
	s.song_title as "Song",
	a.album_title as "Album"
FROM 
	musician_song as ms,
	musician as m,
	song as s,
	album as a
WHERE
	ms.musician_ssn = m.musician_ssn AND
	ms.song_id = s.song_id AND
	a.album_id = s.album_id;
