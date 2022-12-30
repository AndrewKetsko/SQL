select *
from hr.jobs j
union all
select '--------', '----------SUMM----------', sum(j.min_salary), sum(j.max_salary)
from hr.jobs j