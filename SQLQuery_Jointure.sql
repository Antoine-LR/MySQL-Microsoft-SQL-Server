Select 
	s.nom, s.departement, cp.branche
from
	employes s
join
	segmentation_produit cp
on
	s.departement = cp.departement