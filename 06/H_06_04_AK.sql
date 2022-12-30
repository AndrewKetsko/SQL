select *
from hr.employees em
where length(em.phone_number)<13;