--select *
--from HR.departments dep;

select count(dep.department_id) as dep_count,
min(dep.location_id) as loc_ID_min,
max(dep.location_id) as loc_ID_max
from hr.departments dep;
