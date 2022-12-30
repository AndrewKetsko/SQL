select *
from hr.employees em
where em.first_name like '%b%'
order by em.first_name;