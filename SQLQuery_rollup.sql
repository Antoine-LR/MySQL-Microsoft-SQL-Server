SELECT
	sexe, branche, nom_region, count(*) as nb
from
	employes_dep_reg
group by
	rollup (sexe, branche, nom_region)
order by 
	nom_region, branche, sexe