/*3. Liste des 10 d�partements o� le prix du m�tre carr� est le plus �lev�.*/

Select TOP 10 Code_dept AS "Liste des 10 d�partements o� le prix du m� est le plus �lev�",
(SUM(Val_fonc) / SUM(Surf_carr)) AS "Prix moyen du m�"
FROM Emplacement
JOIN Bien
ON Emplacement.ID_Emplacement=Bien.ID_Emplacement
JOIN Transactions
ON Bien.ID_Bien=Transactions.ID_Bien
GROUP BY Code_dept
ORDER BY (SUM(Val_fonc) / SUM(Surf_carr)) DESC 
