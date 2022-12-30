select *
from hr.departments dep
where dep.manager_id is not null
and location_id in (1700, 2400, 2700);