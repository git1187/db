SELECT 
	p.*
FROM
	patient as p,
	doctor as d,
	doctor_patient_check as dp
WHERE
	p.ssn = dp.patient_ssn AND
	d.ssn = dp.doctor_ssn AND
	p.age = 20 AND
	d.specialization = "Eye-specialist";
