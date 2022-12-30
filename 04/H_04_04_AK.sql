select em.employee_id, 
        em.first_name, 
        em.last_name, email, 
        em.phone_number,
        em.hire_date, 
        em.job_id, 
        em.salary, 
        em.commission_pct, 
        em.manager_id, 
        em.department_id
from hr.employees em
where to_char(em.hire_date,'dd')='01';