create view employes_dep_reg as
Select 
	s. * , sp.branche, sg.nom_region, sg.pays
From
	employes s
left join 
	segmentation_produit sp
on
	s.departement = sp.departement
left join
	segmentation_geo sg
on
	s.id_region = sg.id_region

