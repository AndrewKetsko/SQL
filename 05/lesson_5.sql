select *
from hr.employees em
where em.salary in ((select max(em.salary)
                    from hr.employees em
                    where em.job_id='SA_REP'),
                    (select min(em.salary)
                    from hr.employees em
                    where em.job_id='SA_REP'));
                                       
select *
from hr.employees em
where em.salary in (select min(em.salary)
                    from hr.employees em
                    where em.job_id='SA_REP');

select min(employee_id)
from hr.employees em
where em.HIRE_DATE in (select max(em.HIRE_DATE)
                        from hr.employees em);


select *
from hr.employees em
where em.employee_id in (select min(employee_id)
                        from hr.employees em
                        where em.HIRE_DATE in (select max(em.HIRE_DATE)
                                                from hr.employees em));
                        

select em.employee_id,
        em.first_name,
        em.hire_date,
        (select j.job_title 
        from hr.jobs j 
        where j.job_id = em.job_id) as job_title
from hr.employees em;


select t1.level_salary, count(t1.level_salary) as cnt_lev
from (
    select em.first_name,
            em.hire_date,
            em.salary,
           case
                when em.salary < 7000 then 'low_salary'
                when em.salary <= 13000 then 'middle_salary'
                else 'hight_salary' end as level_salary
         from hr.employees em
            order by 3 ) t1
group by t1.level_salary;


select *
from hr.departments dp
where exists ( select 1 
                from hr.employees em 
                where em.department_id = dp.department_id );
                
                
select dp.department_name
from hr.departments dp
where exists ( select 1 
                from hr.employees em 
                where em.department_id = dp.department_id );
              
select dp.department_name
from hr.departments dp
where dp.department_id in (select distinct em.department_id 
                           from hr.employees em);                
                
                
select dp.department_name
from hr.departments dp
where not exists ( select 1 
                    from hr.employees em 
                    where em.department_id = dp.department_id );


select *
from hr.employees em
where 1=1
and em.salary < (select avg(salary) from hr.employees)
and exists (select 1 
            from hr.jobs jb 
            where jb.job_title = 'Sales Representative' and jb.job_id = em.job_id);

