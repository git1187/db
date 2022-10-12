INSERT INTO doctor
VALUES
	("D1", "Mr.Prabhu", "Eye-specialist", 10),
	("D2", "Mr.Mohan", "Dermatologist", 20),
	("D3", "Mrs.Joyti", "Phisician", 40),
	("D4", "Mr.Abhimanyu", "Pediatrician", 20),
	("D5", "Mr.Loola", "Eye-specialist", 10),
	("D6", "Mrs.Poormina", "Dentist", 5),
	("D7", "Mrs.Pooja", "Eye-specialist", 20);
	

INSERT INTO patient
VALUES
	("P1", "Mr.Ram", "Bangalore", 20),
	("P2", "Mr.Sham", "Bangalore", 10),
	("P3", "Mr.Bhaam", "Bangalore", 30),
	("P4", "Mrs.Urmila", "Bangalore", 60),
	("P5", "Mrs.Suma", "Bangalore", 70),
	("P6", "Mrs.Geeta", "Bangalore", 30),
	("P7", "Mrs.Teresa", "Bangalore", 67),
	("P8", "Mr.Ghandi", "Bangalore", 21),
	("P9", "Mr.George", "Bangalore", 54),
	("P10", "Mr.Jim", "Bangalore", 12),
	("P11", "Mrs.Pam", "Bangalore", 32),
	("P12", "Mr.Micheal", "Bangalore", 20);
	
INSERT INTO doctor_patient_check
VALUES
	("D1", "P1"),
	("D2", "P1"),
	("D3", "P1"),
	("D3", "P2"),
	("D4", "P4"),
	("D5", "P8"),
	("D6", "P1"),
	("D7", "P10");


INSERT INTO drug
VALUES
	("Huula", "H2B2", "Noopal"),
	("Poola", "CBH", "Noopal"),
	("Paracetomol", "H2B2", "Noopal"),
	("Coldie", "H2B2", "Noopal"),
	("Crocin", "H2B2", "Noopal"),
	("Julian", "H2B2", "Noopal"),
	("Forreal", "H2B2", "Noopal");
	
	
INSERT INTO doctor_drug_prescribe
VALUES
	("Huula", "D1", "P1","2013-01-21", 2),
	("Huula", "D1", "P2","2013-01-22", 7),
	("Coldie", "D1", "P3","2013-01-2", 3),
	("Coldie", "D1", "P4","2013-01-14", 6),
	("Julian", "D1", "P5","2013-01-25", 2),
	("Huula", "D1", "P6","2013-01-3", 5),
	("Coldie", "D2", "P3", "2013-01-6", 4),
	("Forreal", "D4", "P2", "2015-01-21", 6);

INSERT INTO pharmacy
VALUES
	("Ram General Stores", "Bangalore", 123456789),
	("Gopal Pharmacies", "Bangalore", 1234123412),
	("Hula Stores", "Bangalore", 4564564567),
	("Koorala Stores", "Bangalore", 345341231),
	("Poornima stores and sweets", "Bangalore", 3453453451),
	("January Pharmacies", "Mysore", 456435247);

INSERT INTO drug_pharmacy_sell
VALUES
	("Coldie", "Ram General Stores"),
	("Coldie", "Gopal Pharmacies"),
	("Coldie", "Hula Stores"),
	("Coldie", "Koorala Stores"),
	("Coldie", "Poornima stores and sweets"),
	("Coldie", "January Pharmacies"),
	("Julian", "Hula Stores"),
	("Julian", "Poornima stores and sweets"),
	("Crocin", "January Pharmacies");


INSERT INTO phar_company
VALUES
	("Noopal", "Bangalore", 123456789),
	("Huulap", "Mysore", 345678912);



INSERT INTO phar_comp_pharmacy_contract
VALUES
	("Noopal", "Ram General Stores", "2000-06-21", "2010-06-21", "Mr.Mohan", "This is contract of Noopal and Ram"),
	("Noopal", "Gopal Pharmacies", "2000-07-21", "2010-07-21", "Mr.Mohan", "This is contract of Noopal and Gopal"),
	("Noopal", "Hula Stores", "2000-07-21", "2010-07-21", "Mr.Mohan", "This is contract of Noopal and Hula"),
	("Noopal", "Koorala Stores", "2000-07-21", "2010-07-21", "Mr.Mohan", "This is contract of Noopal and Koorala"),
	("Noopal", "Poornima stores and sweets", "2000-07-21", "2010-07-21", "Mr.Mohan", "This is contract of Noopal and Poornima"),
	
	("Huulap", "Ram General Stores", "2000-07-21", "2010-07-21", "Mr.Mohan", "This is contract of Huulap and Ram"),
	("Huulap", "Koorala Stores", "2000-07-21", "2010-07-21", "Mr. Raj", "this is contract between Huulap and Koorala");
	
	
	
	
	
	
	
	
	
	
	
	
















