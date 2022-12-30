select *
from hr.jobs jb
where jb.max_salary > 12000
order by jb.max_salary;