select *
from hr.employees em
where mod(em.employee_id,20)=0;