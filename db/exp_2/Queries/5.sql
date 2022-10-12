select
	d.*
from 
	drug d 
where 
	formula in 
		(
			select formula 
			from drug
			group by formula
			having count(formula)=1
		);

