select em.first_name, em.hire_date, em.salary,
case
    when em.salary < 8000 then 'low salary'
    when em.salary < 13000 then 'mid salary'
    else 'high salary'
end as salary_rating
from hr.employees em
order by em.salary;


select em.employee_id, em.first_name, em.hire_date,
case
    when em.hire_date between to_date('01.01.2001','dd.mm.yyyy') 
    and to_date('31.12.2004','dd.mm.yyyy') then 'senior'
    when em.hire_date between to_date('01.01.2005','dd.mm.yyyy') 
    and to_date('31.12.2007','dd.mm.yyyy') then 'middle'
    else 'junior'
end as level_rating
from hr.employees em
order by em.hire_date;


select em.first_name, em.hire_date, em.salary,
case
    when em.commission_pct is not null then 'have_commission'
    else 'no_commision'
end as commision,
nvl2 (em.commission_pct,'have_commission','no_commision') as commision
from hr.employees em
order by em.first_name;


select distinct em.job_id
from hr.employees em
order by 1;


select distinct em.manager_id
from hr.employees em
where em.manager_id is not null
order by em.manager_id;


select em.employee_id,
em.first_name || ' ' || em.last_name as full_name,
em.salary
from hr.employees em;


select em.employee_id,
em.first_name || ' ' || em.last_name as full_name,
em.email || '@gmail.com' as email
from hr.employees em;


select em.first_name || ' ' || em.last_name as full_name,
        em.job_id, substr(em.job_id,4)
from hr.employees em;


select em.first_name || ' ' || em.last_name as full_name,
        em.phone_number, substr(em.phone_number,1,11)
from hr.employees em;


select em.first_name || ' ' || em.last_name as full_name,
        em.phone_number, 
        '38067' || replace(substr(em.phone_number,1,11),'.',null) as mobile
from hr.employees em;


select em.first_name || ' ' || em.last_name as full_name,
        em.phone_number, 
        em.hire_date,
        to_char(em.hire_date,'month') as month,
        to_char(em.hire_date,'yyyy') as year
from hr.employees em;


select to_char(em.hire_date,'yyyy') as year, to_char(em.hire_date,'month') as month, count (em.employee_id) as sum
from hr.employees em
group by to_char(em.hire_date,'yyyy'), to_char(em.hire_date,'month')
order by 1;


select em.employee_id,
em.first_name || ' ' || em.last_name as full_name,
lower(em.email || '@gmail.com') as lower_email,
upper(em.email || '@gmail.com') as upper_email
from hr.employees em;
