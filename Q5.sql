select department_name as "departement" , carrez_surface as "surface m²",  property_value "valeur"
from sale
join asset
on sale.ID_asset = asset.ID_asset
join adress
on asset.ID_adress = adress.ID_adress
join department
on department.ID_department= adress.ID_department
where type_local = 'appartement'
order by property_value desc
limit 10