select em.first_name, 
        em.last_name, 
        em.phone_number, 
        em.hire_date, 
        em.salary, 
        dp.department_name, 
        dp.location_id
from hr.employees em
join hr.departments dp
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
left join hr.departments dp
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
right join hr.departments dp
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
cross join hr.departments dp;

select *
from hr.products p
union all
select *
from hr.products_old p;

select *
from hr.products p
union
select *
from hr.products_old p;

select *
from hr.products pr
minus
select *
from hr.products_old pr;

select *
from hr.products_old pr
intersect
select *
from hr.products pr;

select p.product_id as product_id, 
        p.product_name,
        p.count_product, 
        p.price_sales
from hr.products p
union
select  null, 
        null, 
        sum(p.count_product), 
        sum(p.price_sales)
from hr.products p;

select *
from hr.employees em
union
select 207, 'Kostya', 'Nadezhdin', 'NADEZHDIN', '333.111.9999', 
        trunc(sysdate,'dd'), 'IT_DB', 10000, null, 124, 80
from dual;