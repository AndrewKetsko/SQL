select em.manager_id, count (em.employee_id) as empl_count
from hr.employees em
--where em.manager_id is not null
group by em.manager_id
order by count (em.employee_id) desc;