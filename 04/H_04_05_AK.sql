select to_char(em.hire_date,'day'), count(em.employee_id)
from hr.employees em
group by to_char(em.hire_date,'day')
order by 2
;