select em.department_id, 
        min(em.salary) as min_salary, 
        max(em.salary) as max_salary,
        min(em.hire_date) as min_hire_date, 
        max(em.hire_date) as max_hire_date,
        count(em.employee_id) as empl_count
from hr.employees em
group by em.department_id
order by count(em.employee_id) desc;