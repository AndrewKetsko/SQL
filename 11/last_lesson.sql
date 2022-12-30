create table m_andrew.employees as
select em.first_name, 
        em.last_name, 
        em.email, 
        em.phone_number, 
        em.hire_date, 
        em.job_id, 
        em.salary
from hr.employees em
where rownum <=50;

select *
from employees em;

update m_andrew.employees em
set em.salary=em.salary*1.25;

commit;

delete 
from m_andrew.employees em
where em.first_name = 'David'
and em.last_name = 'Austin';

commit;

update m_andrew.employees em
set em.job_id = 'IT_PROG'
where em.first_name = 'John'
and em.last_name = 'Chen';

commit;

insert into m_andrew.employees (FIRST_NAME,
LAST_NAME,
EMAIL,
PHONE_NUMBER,
HIRE_DATE,
JOB_ID,
SALARY)
select 'Jack', 'Rasel', 'RASEL', '999.888.4356', trunc(sysdate, 'dd'), 'ST_MAN', 10000
from dual
union
select 'John', 'Pupsel', 'PUPSEL', '999.888.4356', trunc(sysdate, 'dd'), 'ST_MAN', 10000
from dual
union
select 'Josh', 'Dupsel', 'DUPSEL', '999.888.4356', trunc(sysdate, 'dd'), 'ST_MAN', 10000
from dual;

commit;

create view m_andrew.emp_v as
select em.first_name, em.last_name, em.job_id
from m_andrew.employees em
where em.salary >=9000;

grant select on m_andrew.emp_v to hr;

select em.first_name, em.last_name, j.job_title
from m_andrew.emp_v em
join hr.jobs j
on em.job_id = j.job_id;

select tt.job_title, count(tt.first_name) as count
from(select em.first_name, em.last_name, j.job_title
    from m_andrew.emp_v em
    join hr.jobs j
    on em.job_id = j.job_id) tt
group by tt.job_title;

