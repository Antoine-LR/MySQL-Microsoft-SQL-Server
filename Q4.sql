select region_name as "region" , round(avg(property_value/carrez_surface),2) as prix_m²
from sale
join asset
on sale.ID_asset = asset.ID_asset
join adress
on asset.ID_adress = adress.ID_adress
join region
on region.ID_region = adress.ID_region
where type_local = 'maison'
and region_name = 'Île-de-France'




