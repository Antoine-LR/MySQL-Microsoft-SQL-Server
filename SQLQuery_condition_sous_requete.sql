SELECT
	s1.salaire, s1.departement
FROM
	employes s1
where
	s1.salaire IN (select max(salaire) from employes s2);