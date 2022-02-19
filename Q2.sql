
/*1. Nombre total d�appartements vendus au 1er semestre 2020.*/

Select count(ID_Transactions) AS "Total des appartements vendus au 1er semestre 2020"
from Transactions
Join Bien
on Transactions.ID_Bien = Bien.ID_Bien
where code_type_loc= 2
AND date_mut BETWEEN '2020-01-01' and '2020-06-30'

/*2. Proportion des ventes d�appartements par le nombre de pi�ces*/
Select nb_pp , count(ID_Transactions) as "Proportion des ventes d�appartements par le nombre de pi�ces"
from Transactions
Join Bien
on Transactions.ID_Bien = Bien.ID_Bien
where code_type_loc= 2
group by nb_pp
order by count(ID_Transactions) desc 