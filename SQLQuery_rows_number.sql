SELECT 
	branche,nom,salaire,
	row_number() over(partition by branche order by salaire desc)
from
	employes_dep_reg