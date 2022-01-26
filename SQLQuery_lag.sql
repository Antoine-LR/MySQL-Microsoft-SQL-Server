SELECT 
	departement,salaire,
	lag(salaire) over(partition by departement order by salaire desc) 
from
	employes