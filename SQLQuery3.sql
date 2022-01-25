select departement, sum(salaire), avg(salaire), varp(salaire), var(salaire)

from employes

group by departement