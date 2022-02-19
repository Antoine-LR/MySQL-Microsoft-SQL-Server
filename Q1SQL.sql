select count(ID_Transactions) as "Nombre total d’appartements vendus au 1er semestre 2020"
from transactions
join bien
on transactions.ID_Bien=Bien.ID_Bien
where Code_type_loc =2
And Date_mut between "01/01/2020" and "30/06/2020"