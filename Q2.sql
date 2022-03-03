select number_main_rooms 'Nombre de piece', count(ID_sale) as'Ventes appartements' , round((count(*) *100)/(select count(*) from sale),2) as 'Proportion'
from sale
join asset
on sale.ID_asset = asset.ID_asset
where code_type_local = 2
group by number_main_rooms
order by number_main_rooms  asc