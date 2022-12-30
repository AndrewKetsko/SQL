create view m_andrew.full_detail_emp as
select em.first_name,
        em.last_name,
        em.phone_number,
        em.hire_date,
        j.job_title,
        em.salary,
        nvl(dp.department_name,'Dep not defined') as department_name,
        nvl(dp.location_id,0) as location_id,
        nvl(ct.city,'Not defined') as city,
        nvl(ct.street_address,'Not defined') as street_address,
        nvl(ct.postal_code,'Not defined') as postal_code
from hr.employees em
left join hr.departments dp
on em.department_id = dp.department_id
join hr.jobs j
on em.job_id = j.job_id
left join hr.locations ct
on dp.location_id = ct.location_id
order by em.employee_id;

select *
from m_andrew.full_detail_emp;

select *
from m_andrew.full_detail_emp fe
where fe.hire_date between to_date('01.01.2006 00:00:00', 'dd.mm.yyyy hh24:mi:ss') 
and to_date('31.12.2008 00:00:00', 'dd.mm.yyyy hh24:mi:ss')
and fe.city in ('South San Francisco','Oxford')
order by fe.hire_date desc;


create or replace view m_andrew.full_detail_emp as
select em.first_name,
        em.last_name,
        em.phone_number,
        em.hire_date,
        j.job_title,
        em.salary,
        em.commission_pct,
        nvl(dp.department_name,'Dep not defined') as department_name,
        nvl(dp.location_id,0) as location_id,
        nvl(ct.city,'Not defined') as city,
        nvl(ct.street_address,'Not defined') as street_address,
        nvl(ct.postal_code,'Not defined') as postal_code
from hr.employees em
left join hr.departments dp
on em.department_id = dp.department_id
join hr.jobs j
on em.job_id = j.job_id
left join hr.locations ct
on dp.location_id = ct.location_id
order by em.employee_id;


CREATE USER TEST_USER IDENTIFIED BY "testPass"; -- створюємо нового користувача і даємо йому пароль
GRANT CONNECT TO TEST_USER; -- даємо новому користувачеві права на коннект у БД
GRANT CREATE SESSION TO TEST_USER; -- даємо новому користувачеві права на створення сесій у БД
ALTER USER TEST_USER QUOTA UNLIMITED ON USERS; -- даємо новому користувачеві права на використання TABLESPACE - USERS
--Приклад надання прав (гранту) на SELECT для таблиці EMPLOYEES:
GRANT SELECT ON HR.EMPLOYEES TO TEST_USER
--Після того, як створений новий користувач і видано грант на SELECT, можна підключитися під користувачем TEST_USER і виконати селект з
--користувача (схеми) HR, таблиці EMPLOYEES:
SELECT *
FROM HR.EMPLOYEES EM;
--Приклад скасування прав (гранту) на SELECT для таблиці EMPLOYEES:
REVOKE SELECT ON HR.EMPLOYEES FROM TEST_USER
--Приклад надання грантів на SELECT, INSERT, UPDATE, DELETE для таблиці EMPLOYEES:
GRANT SELECT, INSERT, UPDATE, DELETE ON HR.EMPLOYEES TO TEST_USER;
--Приклад скасування грантів на INSERT, UPDATE, DELETE для таблиці EMPLOYEES:
REVOKE INSERT, UPDATE, DELETE ON HR.EMPLOYEES FROM TEST_USER;
--Приклад видалення користувача (потрібно мати відповідні привілеї):
DROP USER TEST_USER;


select rownum, em.*
from hr.employees em;

select rownum, tt.*
from ( select *
        from hr.employees em
        --where em.manager_id is not null
        order by em.salary desc ) tt
where rownum <= 5;

select *
from (select em.*, rownum as row_num
        from HR.employees em) tt
where tt.row_num = 50;

select tt2.product_id, tt2.product_name, tt2.count_product, tt2.price_sales
  from (select tt.product_id
              ,tt.product_name
              ,tt.count_product
              ,tt.price_sales
              ,rownum as r_num
          from (select *
                from hr.products pr
                
                union all
                
                select *
                from hr.products_old pr2) tt) tt2
group by product_id, product_name, count_product, price_sales
order by min(r_num);

select rowid, em.*
from hr.employees em;

