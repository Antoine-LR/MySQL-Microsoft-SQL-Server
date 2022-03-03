WITH
sale_trim_1 as (
select city as C1, property_value as T1
from sale
join asset
on sale.ID_asset = asset.ID_asset
join adress
on asset.ID_adress = adress.ID_adress
where date_transfer between '2020-01-01' and '2020-03-31'
Group by city
),
sale_trim_2 as (
select city as C2, property_value as T2
from sale
join asset
on sale.ID_asset = asset.ID_asset
join adress
on asset.ID_adress = adress.ID_adress
where date_transfer between '2020-04-01' and '2020-06-30'
Group by city
)
select C2 as "Commune" , ((T2-T1) *100) /T2 as Evolution
from sale_trim_1, sale_trim_2
where ((T2-T1) *100) /T2 >=20
GROUP BY C2
ORDER BY ((T2-T1) *100) /T2 asc