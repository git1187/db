CREATE TABLE musician (
	musician_ssn VARCHAR(10) PRIMARY KEY,
	musician_name VARCHAR(100) NOT NULL,
	musician_address VARCHAR(255) NOt NULL,
	musician_phone_no BIGINT NOT NULL
);

CREATE TABLE instrument (
	instrument_id INTEGER PRIMARY KEY,
	instrument_name VARCHAR(100) NOT NULL,
	instrument_musical_key VARCHAR(10) NOT NULL
);

CREATE TABLE musician_instrument(
	musician_ssn VARCHAR(10) REFERENCES musician,
	instrument_id INTEGER REFERENCES instrument,
	PRIMARY KEY(musician_ssn, instrument_id)
);

CREATE TABLE album (
	album_id INTEGER PRIMARY KEY,
	producer_ssn VARCHAR(10) REFERENCES musician,
	album_title VARCHAR(100) NOT NULL,
	copyright_data VARCHAR(100) NOT NULL,
	format VARCHAR(10) NOT NULL	
);

CREATE TABLE song (
	song_id INTEGER PRIMARY KEY,
	album_id INTEGER REFERENCES album,
	song_title VARCHAR(255) NOT NULL,
	song_author VARCHAR(100) NOT NULL
);

CREATE TABLE musician_song (
	musician_ssn VARCHAR(10) REFERENCES musician,
	song_id INTEGER REFERENCES song,
	PRIMARY KEY(musician_ssn, song_id)
);
