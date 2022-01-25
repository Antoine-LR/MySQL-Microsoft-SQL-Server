SELECT
	s1.nom, s1.salaire, s1.departement,
	(select round(avg(salaire),2) from employes s2 where s1.departement = s2.departement) dept_avg
from 
	employes s1
