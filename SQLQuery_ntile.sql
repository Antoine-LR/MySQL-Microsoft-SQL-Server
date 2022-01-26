SELECT 
	departement,salaire,
	ntile(4) over(partition by departement order by salaire desc) as quartile
from
	employes