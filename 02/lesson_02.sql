select em.*
      --,nvl(em.commission_pct, 0) as commission_pct1
      ,nvl2(em.commission_pct, 'yes', 'no') as commission_pct2
from HR.employees em;


select em.first_name, em.last_name, em.hire_date as start_date, em.salary
from hr.employees em
where em.salary >= 10000
order by em.salary;

select em.first_name, em.last_name, em.hire_date as start_date, em.salary
from hr.employees em
where em.department_id = 80
and em.salary between 10000 and 12000
order by em.salary;

select em.first_name, em.last_name, em.hire_date as start_date, em.job_id, em.salary
from hr.employees em
where em.department_id in (60, 80, 90)
and em.employee_id not in (100, 103, 145)
order by em.hire_date desc;

select *
from hr.employees em
where em.job_id like 'S%'
and em.first_name not like 'P%'
and em.hire_date >= to_date('01.06.2007', 'dd.mm.yyyy')
order by em.hire_date;

select *
from hr.employees em
where em.manager_id is not null
and em.commission_pct is null
and em.hire_date between to_date ('01.01.2001', 'dd.mm.yyyy') and
                         to_date ('31.12.2006', 'dd.mm.yyyy')
order by em.hire_date;