select em.first_name, em.last_name, em.phone_number, em.hire_date, em.salary
from hr.employees em
where em.employee_id between 100 and 130
and hire_date >= to_date('2007-01-01', 'YYYY-MM-DD');