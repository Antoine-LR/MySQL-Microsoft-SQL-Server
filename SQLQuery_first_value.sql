SELECT 
	departement,nom,salaire,
	first_value(salaire) over (partition by departement order by salaire desc)
from
	employes