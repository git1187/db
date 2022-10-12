SELECT
	d.*
FROM
	doctor as d,
	doctor_drug_prescribe as pres,
	patient as p
WHERE
	d.ssn = pres.doctor_ssn AND
	p.ssn = pres.patient_ssn AND
	pres.prescription_date LIKE "2013-%"
GROUP BY 
	pres.doctor_ssn
HAVING
	COUNT(pres.patient_ssn) >= 5
