CREATE TABLE vendor(
	tin_no INTEGER PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	address VARCHAR(100) NOT NULL,
	contact VARCHAR(10) NOT NULL
);

CREATE TABLE panel(
	pv_id INTEGER PRIMARY KEY,
	panel_type VARCHAR(50) NOT NULL,
	warrenty INTEGER NOT NULL,
	price INTEGER NOT NULL,
	capacity INT
);

CREATE TABLE user(
	house_no INTEGER PRIMARY KEY,
	address VARCHAR(100) NOT NULL,
	user_usage VARCHAR(50) NOT NULL
);

CREATE TABLE install(
	tin_no INTEGER REFERENCES vendor,
	pv_id INTEGER REFERENCES panel,
	house_no INTEGER REFERENCES user,
	install_date DATE NOT NULL,
	PRIMARY KEY(tin_no, pv_id, house_no)
);

CREATE TABLE sell(
	tin_no INTEGER REFERENCES vendor,
	pv_id INTEGER REFERENCES panel,
	PRIMARY KEY(tin_no, pv_id)
);

CREATE TABLE purchase(
	pv_id INTEGER REFERENCES panel,
	house_no INTEGER REFERENCES user,
	PRIMARY KEY(pv_id, house_no)
);


