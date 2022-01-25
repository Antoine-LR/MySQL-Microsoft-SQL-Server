Select 
	nom, s.departement, branche, nom_region
from
	employes s
left join 
	segmentation_produit sp
on
	s.departement = sp.departement
join
	segmentation_geo sg
on
	s.id_region = sg.id_region

