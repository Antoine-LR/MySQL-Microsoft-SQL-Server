WITH
sale_trim_1 as (
select count(property_value) as T1 
from sale
where date_transfer between '2020-01-01' and '2020-03-31'
),
sale_trim_2 as (
select count(property_value) as T2
from sale
where date_transfer between '2020-04-01' and '2020-06-30'
)
select T1 as "Ventes premier trimestre de 2020", T2 as "Ventes second trimestre de 2020", ROUND(((T2-T1) *100 /T1),2) as "Taux d’évolution"
from sale_trim_1, sale_trim_2