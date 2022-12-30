select em.first_name, em.last_name, em.phone_number, em.hire_date, em.salary, 
       dp.department_name, dp.location_id
from hr.employees em
inner join hr.departments dp
on em.department_id = dp.department_id
order by em.employee_id;


select em.first_name,
        em.last_name,
        em.phone_number,
        em.hire_date,
        em.salary,
        nvl(dp.department_name,'Dep not defined') as department_name,
        nvl(dp.location_id,0) as location_id
from hr.employees em
left outer join hr.departments dp
on em.department_id = dp.department_id
order by em.employee_id;


select em.first_name,
        em.last_name,
        em.phone_number,
        em.hire_date,
        j.job_title,
        em.salary,
        nvl(dp.department_name,'Dep not defined') as department_name,
        nvl(dp.location_id,0) as location_id,
        nvl(loc.city,'Not defined') as city,
        nvl(loc.street_address,'Not defined') as street_address,
        nvl(loc.postal_code,'Not defined') as postal_code
from hr.employees em
left outer join hr.departments dp
on em.department_id = dp.department_id
inner join hr.jobs j
on em.job_id = j.job_id
left outer join hr.locations loc
on dp.location_id = loc.location_id
order by em.employee_id;


select *
from
    (select em.first_name,
            em.last_name,
            em.phone_number,
            em.hire_date,
            j.job_title,
            em.salary,
            nvl(dp.department_name, 'Dep not defined') as department_name,
            nvl(dp.location_id,0) as location_id,
            nvl(ct.city,'Not defined') as city,
            nvl(ct.street_address,'Not defined') as street_address,
            nvl(ct.postal_code,'Not defined') as postal_code
    from hr.employees em
    left outer join hr.departments dp
    on em.department_id = dp.department_id
    inner join hr.jobs j
    on em.job_id = j.job_id
    left outer join hr.locations ct
    on dp.location_id = ct.location_id
    where j.job_title in ('Shipping Clerk', 'Accountant','Sales Representative')
    order by em.employee_id ) t1
where t1.city in ('Seattle', 'South San Francisco', 'Oxford', 'Not defined');

select em.first_name,
        em.last_name,
        em.phone_number,
        em.hire_date,
        j.job_title,
        em.salary,
        nvl(dp.department_name, 'Dep not defined') as department_name,
        nvl(dp.location_id,0) as location_id,
        nvl(lc.city,'Not defined') as city,
        nvl(lc.street_address,'Not defined') as street_address,
        nvl(lc.postal_code,'Not defined') as postal_code
from hr.employees em
left outer join hr.departments dp
on em.department_id = dp.department_id
inner join hr.jobs j
on em.job_id = j.job_id
left outer join hr.locations lc
on dp.location_id = lc.location_id
where j.job_title in ('Shipping Clerk', 'Accountant','Sales Representative')
and nvl(lc.city,'Not defined') in ('Seattle', 'South San Francisco', 'Oxford', 'Not defined')
order by em.employee_id;


select em.first_name,
        em.last_name,
        em.phone_number,
        em.hire_date, 
        em.salary,
        dp.department_name,
        dp.location_id
from hr.employees em
right outer join hr.departments dp
on em.department_id = dp.department_id
order by em.employee_id;


select em.first_name,
        em.last_name,
        em.phone_number,
        em.hire_date, 
        em.salary,
        dp.department_name,
        dp.location_id
from hr.employees em
full outer join hr.departments dp
on em.department_id = dp.department_id
order by em.employee_id;
