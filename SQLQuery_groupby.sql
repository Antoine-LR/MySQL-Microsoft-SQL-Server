SELECT
	nom_region, branche , count(*)
from
	employes_dep_reg
group by
	grouping sets (branche, nom_region)
order by 
	nom_region, branche