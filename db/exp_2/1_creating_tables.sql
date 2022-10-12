CREATE TABLE doctor(
	ssn VARCHAR(10) PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	specialization VARCHAR(50) NOT NULL,
	year_of_exp INTEGER NOT NULL
);

CREATE TABLE patient(
	ssn VARCHAR(10) PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	address VARCHAR(50) NOT NULL,
	age INTEGER NOT NULL
);

CREATE TABLE doctor_patient_check(
	doctor_ssn VARCHAR(10) REFERENCES doctor,
	patient_ssn VARCHAR(10) REFERENCES patient,
	PRIMARY KEY(doctor_ssn, patient_ssn)
);

CREATE TABLE drug(
	trade_name VARCHAR(50) PRIMARY KEY,
	formula VARCHAR(50) NOT NULL,
	phar_comp_name VARCHAR(50) REFERENCES phar_company
);

CREATE TABLE doctor_drug_prescribe(
	drug_trade_name VARCHAR(50) REFERENCES drug,
	doctor_ssn VARCHAR(10) REFERENCES doctor,
	patient_ssn VARCHAR(10) REFERENCES patient,
	prescription_date DATE NOT NULL,
	quantity INTEGER NOT NULL,
	PRIMARY KEY(drug_trade_name, doctor_ssn, patient_ssn)
);

CREATE TABLE pharmacy(
	name VARCHAR(50) PRIMARY KEY,
	adddress VARCHAR(50) NOT NULL,
	phone_number BIGINT NOT NULL
);

CREATE TABLE drug_pharmacy_sell(
	drug_trade_name VARCHAR(50) REFERENCES drug,
	pharmacy_name VARCHAR(50) REFERENCES pharmacy,
	PRIMARY KEY(drug_trade_name, pharmacy_name)
);

CREATE TABLE phar_company(
	name VARCHAR(50) PRIMARY KEY,
	address VARCHAR(50) NOT NULL,
	phone_number BIGINT NOT NULL
);

CREATE TABLE phar_comp_pharmacy_contract(
	phar_comp_name VARCHAR(50) REFERENCES phar_company,
	pharmacy_name VARCHAR(50) REFERENCES pharmacy,
	start_date DATE NOT NULL,
	end_date DATE NOT NULL,
	supervisor VARCHAR(50) NOT NULL,
	text VARCHAR(100) NOT NULL,
	PRIMARY KEY(pharmacy_name, phar_comp_name)
);




