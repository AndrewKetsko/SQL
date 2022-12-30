select em.employee_id, em.hire_date,
case
    when em.employee_id <= 130 then 'level_1'
    when em.employee_id <= 180 then 'level_2'
    else 'level_3'
end as degree
from hr.employees em;