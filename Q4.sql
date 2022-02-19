/*4. Prix moyen du mètre carré d’une maison en Île-de-France.*/
SELECT (SUM(Val_fonc) / SUM(Surf_carr)) AS "Prix moyen du mètre carré d’une maison en Île-de-France"
FROM Transactions
JOIN Bien
ON Transactions.ID_Bien = Bien.ID_Bien
JOIN Emplacement
ON Emplacement.ID_Emplacement = Bien.ID_Emplacement
WHERE Code_type_loc = 1
AND Code_dept IN (75,77,78,91,92,93,94,95);
