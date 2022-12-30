select em.department_id, round(avg(em.salary),2) as avg_salary
from hr.employees em
group by em.department_id
order by em.department_id;