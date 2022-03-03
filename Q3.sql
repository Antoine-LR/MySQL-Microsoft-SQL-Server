select department_name as 'département' , round(avg(property_value/carrez_surface),2) as prix_m²
from sale
join asset
on sale.ID_asset = asset.ID_asset
join adress
on asset.ID_adress = adress.ID_adress
join department
on department.ID_department= adress.ID_department
group by department_name
order by prix_m² desc
limit 10