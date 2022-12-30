create table m_andrew.employees as
select *
from hr.employees em;

create table m_andrew.currency
(id_curr number,
val_curr varchar2(3));

alter table m_andrew.employees
add (id_curr number);

alter table m_andrew.employees
rename column phone_number to telephone;

alter table m_andrew.employees
drop column commission_pct;

insert into m_andrew.currency(id_curr, val_curr)
select 1 as id_curr, 'USD' as val_curr
from dual
union
select 2, 'EUR'
from dual
union
select 3 as id_curr, 'UAH' as val_curr
from dual;

commit; -- зафіксувати DML зміни

rollback; -- скасувати DML зміни

insert into m_andrew.employees
select 207,'Kostya','Nadezhdin','NADEZHDIN','111.566.6666', trunc(sysdate,'dd'),'IT_DB', 10000, 124, 80, 1
from dual;

commit; -- зафіксувати DML зміни

rollback; -- скасувати DML зміни

delete 
from m_andrew.employees em
where em.employee_id in (135, 140, 182);

commit; -- зафіксувати DML зміни

rollback; -- скасувати DML зміни

select *
from m_andrew.employees em
where em.employee_id = 178;

update m_andrew.employees em
set em.department_id = 80
where em.employee_id = 178;

commit; -- зафіксувати DML зміни

rollback; -- скасувати DML зміни

update m_andrew.employees em
set em.id_curr = 1;

commit; -- зафіксувати DML зміни

rollback; -- скасувати DML зміни

select *
from m_andrew.employees em
where em.employee_id in (100, 101, 102, 114, 146, 147, 148);

update m_andrew.employees em
set em.id_curr = 2
where em.employee_id in (100,101,102);

update m_andrew.employees em
set em.id_curr = 3
where em.employee_id in (114, 146, 147, 148);

commit; -- зафіксувати DML зміни

rollback; -- скасувати DML зміни

select em.employee_id, em.first_name, em.last_name,
em.email, em.telephone, em.hire_date, em.job_id, em.salary,
cur.val_curr, em.manager_id, em.department_id
from m_andrew.employees em
join m_andrew.currency cur
on em.id_curr = cur.id_curr
order by cur.id_curr;

delete from m_andrew.employees em
where em.employee_id in (135, 140,182);

delete from m_andrew.employees;

truncate table m_andrew.employees;

truncate table m_andrew.currency;

drop table m_andrew.employees;

drop table m_andrew.currency;