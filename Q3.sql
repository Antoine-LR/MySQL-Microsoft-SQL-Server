/*3. Liste des 10 départements où le prix du mètre carré est le plus élevé.*/

Select TOP 10 Code_dept AS "Liste des 10 départements où le prix du m² est le plus élevé",
(SUM(Val_fonc) / SUM(Surf_carr)) AS "Prix moyen du m²"
FROM Emplacement
JOIN Bien
ON Emplacement.ID_Emplacement=Bien.ID_Emplacement
JOIN Transactions
ON Bien.ID_Bien=Transactions.ID_Bien
GROUP BY Code_dept
ORDER BY (SUM(Val_fonc) / SUM(Surf_carr)) DESC 
