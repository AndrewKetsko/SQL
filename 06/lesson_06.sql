select sysdate
from dual;

select sysdate,
sysdate - interval '1' second,
sysdate - interval '1' minute,
sysdate - interval '1' hour,
sysdate + interval '1' day,
sysdate + interval '1' month,
sysdate + interval '1' year
from dual;

select sysdate,
trunc(sysdate,'dd'),
trunc(sysdate,'mm'),
trunc(sysdate,'mm') - 1/86400,
trunc(sysdate,'yyyy')
from dual;

select sysdate as sys_date,
add_months(sysdate, +1) as plus_month,
trunc(sysdate,'dd') as sys_day,
add_months(trunc(sysdate,'dd'), +1) as plus_month,
add_months(trunc(sysdate,'dd'), -1) as minus_month,
trunc(sysdate,'mm') as sys_month,
add_months(trunc(sysdate,'mm'), +1) as plus_month,
add_months(trunc(sysdate,'mm'), -1) as minus_month
from dual;

-- перевірка дати
select trunc(sysdate,'mm'), 
        add_months(trunc(sysdate,'mm'),1) - interval '1' second
from dual;

-- ??????? ??????
select *
from hr.sales s
where s.dt_operations between trunc(sysdate,'mm') and add_months(trunc(sysdate,'mm'),1) - interval '1' second
order by s.dt_operations;


-- перевірка дати
select add_months(trunc(sysdate,'yyyy'),-12*15), trunc(add_months(trunc(sysdate,'mm'),-12*14),'yyyy') - interval '1' day
from dual;

-- ??????? ??????
select *
from HR.employees em
where em.hire_date between add_months(trunc(sysdate,'yyyy'),-12*15) and
trunc(add_months(trunc(sysdate,'mm'),-12*14),'yyyy') - 1
order by em.hire_date;

select trunc(em.hire_date,'yyyy') as hire_year, count(*) as count
from hr.employees em
group by trunc(em.hire_date,'yyyy')
order by trunc(em.hire_date,'yyyy');


select to_char(em.hire_date,'yyyy') as hire_year, count(*) as count
from hr.employees em
group by to_char(em.hire_date,'yyyy')
order by to_char(em.hire_date,'yyyy');


select *
from hr.employees em
where length(em.job_id) = 7;

select *
from hr.employees em
where mod (em.salary, 1000) = 0;


