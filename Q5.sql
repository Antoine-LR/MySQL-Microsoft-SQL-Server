/*5. Liste des 10 appartements les plus chers avec le département et le
nombre de mètres carrés.*/

Select TOP 10 Code_dept , Surf_carr, Val_fonc
from Transactions
join Bien
ON Transactions.ID_Bien = Bien.ID_Bien
join Emplacement
ON Emplacement.ID_Emplacement=Bien.ID_Emplacement
WHERE Code_type_loc = 2 
ORDER BY Val_fonc DESC
