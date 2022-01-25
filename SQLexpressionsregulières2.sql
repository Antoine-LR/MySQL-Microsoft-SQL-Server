select 
	job_title, substring(job_title, 10, LEN(job_title)) as asst
from
	employes
where 
	job_title like 'Assistant%'


select 
	job_title
from
	employes
where 
	job_title like 'Assistant% M%'


select 
	job_title
from
	employes
where 
	job_title like '%Representative%'