--select *
--from HR.jobs jb;

select count(*) as jobs_count,
min(jb.min_salary) as min_salary,
max(jb.max_salary) as max_salary
from hr.jobs jb;