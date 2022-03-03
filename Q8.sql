WITH
metre_carre_2_pieces as (
select round(avg(property_value/carrez_surface),2) as P2
from sale
join asset
on sale.ID_asset = asset.ID_asset
join adress
on asset.ID_adress = adress.ID_adress
where code_type_local = 2
and number_main_rooms =2
),
metre_carre_3_pieces  as (
select round(avg(property_value/carrez_surface),2) as P3
from sale
join asset
on sale.ID_asset = asset.ID_asset
join adress
on asset.ID_adress = adress.ID_adress
where code_type_local = 2
and number_main_rooms =3
)
select P2 as "prix m² appartement 2 pièces" , 
P3 as "prix m² appartement 3 pièces ",
round(((P3-P2) *100) /P2 ,2) as Evolution
from metre_carre_2_pieces,metre_carre_3_pieces