select count(ID_sale) AS "1. Nombre total d’appartements vendus au 1er semestre 2020"
from sale
join asset
on sale.ID_asset = asset.ID_asset
where code_type_local = 2
And date_transfer between '2020-01-01' and '2020-06-30'