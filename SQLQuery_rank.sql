SELECT 
	departement,nom,salaire,
	rank() over(partition by departement order by salaire desc)
from
	employes