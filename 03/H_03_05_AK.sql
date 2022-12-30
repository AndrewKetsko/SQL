select em.department_id, em.salary, count(em.employee_id) as empl_count
from hr.employees em
group by em.department_id, em.salary
having count(em.employee_id) > 1
order by em.department_id, em.salary
;