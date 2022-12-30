select nvl(reg.region_name,'not defined') as region, 
       count(em.employee_id) as count
from HR.employees em
left outer join HR.departments dep
on em.department_id=dep.department_id
left outer join hr.locations loc
on dep.location_id=loc.location_id
left outer join HR.countries ct
on loc.country_id=ct.country_id
full outer join HR.regions reg
on ct.region_id=reg.region_id
group by reg.region_name
;