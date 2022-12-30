select *
from hr.employees em
order by em.hire_date desc
fetch first 3 rows only;
