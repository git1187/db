INSERT INTO musician(musician_ssn, musician_name, musician_address, musician_phone_no)
VALUES
	("SSNU001", "Mr. Arjun", "Bengaluru", 1234567890),
	("SSNU002", "Mr. Amit", "Madras", 1234567891),
	("SSNU003", "Mrs. Mangala", "Mumbai", 4567891234),
	("SSNU004", "Mrs. Suma", "Chennai", 7894567891),
	("SSNU005", "Mrs. Seema", "Sikkim", 4567891329),
	("SSNU006", "Mr. Gopi", "Jharkand", 7894567895),
	("SSNU007", "Mrs. Suhana", "Uttar Pradesh", 4561231235),
	("SSNU008", "Mr. Ravi", "Maharashtra", 1237894565),
	("SSNU009", "Mr. Bheem", "Kerala", 789789456);

INSERT INTO instrument(instrument_id, instrument_name, instrument_musical_key)
VALUES
	(1, "Veena", "C"),
	(2, "Guitar", "B-Flat"),
	(3, "Piano", "E-Flat"),
	(4, "Tabala", "E"),
	(5, "Violin", "C-Flat"),
	(6, "Sitar", "B")
	(7, "Flute", "B-Flat");

INSERT INTO musician_instrument( musician_ssn, instrument_id)
VALUES 
	("SSNU001", 1),
	("SSNU002", 1),
	("SSNU002", 2),
	("SSNU002", 3),
	("SSNU002", 4),
	("SSNU002", 5),
	("SSNU002", 6),
	("SSNU002", 7),
	("SSNU003", 2),
	("SSNU003", 3),
	("SSNU004", 4),
	("SSNU005", 4),
	("SSNU006", 5);

INSERT INTO album( album_id, producer_ssn, album_title, copyright_data, format )
VALUES
	(1, "SSNU001", "Wish You Were Here", "Copyright by Pink Floyd Productions", "CD"),
	(2, "SSNU002", "Nevermind", "Copyright by George and team Inc.", "MC"),
	(3, "SSNU003", "Never Believe!", "Copyright by Bennys company ", "CD"),
	(4, "SSNU004", "To the moon!", "Copyright by Flatman Bird Corporations", "MC"),
	(5, "SSNU005", "Go Jhonny go go go!", "Copyright by Ragnarock Industries", "MC"),
	(6, "SSNU006", "Kolar Polar", "Copyright by Housten Boys Villege company", "CD"),
	(7, "SSNU007", "Jack Jill Pills", "Copyright by Negative emotions Corellations Company", "MC")
	
	(8, "SSNU002", "No never", "Copyright by Never and team Inc.", "MC"),
	(9, "SSNU003", "Believe!", "Copyright by Believe company ", "CD"),
	(10, "SSNU004", "To the sun!", "Copyright by FlSpace Corporations", "MC"),
	(11, "SSNU005", "There she stands!", "Copyright by Her Industries", "MC"),
	(12, "SSNU006", "Polo", "Copyright by Polo company", "CD"),
	(13, "SSNU007", "Jack", "Copyright by Jack Company", "MC");
	
INSERT INTO song ( song_id, album_id, song_title, song_author )
VALUES
	(1, 1, "Breathe", "Pink Floyd"),
	(2, 2, "Never Before", "George"),
	(3, 3, "Go to sleep", "Benny"),
	(4, 1, "Dream a little dream of me", "Pink Floyd"),
	(5, 2, "Wasteland", "George and band"),
	(6, 4, "Fly by", "Flatman"),
	(7, 3, "Blue", "Benny");
	

INSERT INTO musician_song ( musician_ssn, song_id )
VALUES
	("SSNU001", 1),
	("SSNU002", 1),
	("SSNU003", 1),
	("SSNU004", 1),
	("SSNU003", 2),
	("SSNU004", 3),
	("SSNU005", 3),
	("SSNU006", 4),
	("SSNU007", 5),
	("SSNU008", 6),
	("SSNU009", 7);
	
	
	
	
	
	
