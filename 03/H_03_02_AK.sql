select em.manager_id, count (em.employee_id) as empl_count
from hr.employees em
where em.manager_id is not null
group by em.manager_id
having count (em.employee_id) > 5
order by count (em.employee_id);