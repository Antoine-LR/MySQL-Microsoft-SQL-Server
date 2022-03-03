with
top_3 AS(
SELECT city, department_name, department_code, round(AVG(property_value)) as valeur, 
ROW_NUMBER() OVER (PARTITION BY department_code ORDER BY AVG(property_value) DESC)  AS classement
from sale
join asset
on sale.ID_asset = asset.ID_asset
join adress
on asset.ID_adress = adress.ID_adress
join department
on department.ID_department= adress.ID_department
where department_code in (6, 13, 33, 59, 69)
group by department_code, city
)
SELECT department_code as "code departement", department_name as "nom departement" , city as commune , valeur 
FROM top_3
WHERE classement <= 3