/*6. Taux d’évolution du nombre de ventes entre le premier et le second
trimestre de 2020*/

WITH

Transactions_1er_trim as (
	Select count(ID_Transactions) as T1
	from Transactions
	WHERE Date_mut BETWEEN '2020-01-01' AND '2020-03-31'
 ),

Transactions_2eme_trim as (
	Select count(ID_Transactions) as  T2
	from Transactions
	Where Date_mut BETWEEN '2020-04-01' AND '2020-06-30'
)

SELECT ((T2-T1)*100 /T2) as "Taux d’évolution du nombre de ventes entre le premier et le second
trimestre de 2020"
FROM Transactions_1er_trim, Transactions_2eme_trim