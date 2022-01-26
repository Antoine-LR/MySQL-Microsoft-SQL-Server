SELECT 
	departement,nom,salaire,
	avg(salaire) over(partition by departement)
from
	employes