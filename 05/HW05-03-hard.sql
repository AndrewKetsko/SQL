select em.department_id, round(avg(em.salary),2), min(em.salary), max(em.salary)
from hr.employees em
group by em.department_id
having avg(em.salary) in (select max(avg_salary)
                            from(select avg(em.salary) as avg_salary
                                from hr.employees em
                                group by em.department_id));


select em.department_id, round(avg(em.salary),2) as avg_salary, min(em.salary) as min_salary, max(em.salary) as max_salary
from hr.employees em
group by em.department_id
order by round(avg(em.salary),2) desc
fetch first 1 rows only;


select  tab.department_id, 
        tab.avg_salary,
        (select max(em.salary)
        from hr.employees em
        where em.department_id = (select tab.department_id
                                  from (select em.department_id, round(avg(em.salary),2) as avg_salary
                                        from hr.employees em
                                        group by em.department_id) tab
                                  where tab.avg_salary in (select max(tab.avg_salary)
                                                           from (select round(avg(em.salary),2) as avg_salary
                                                                 from hr.employees em
                                                                 group by em.department_id) tab))) as max_salary,
        (select min(em.salary)
        from hr.employees em
        where em.department_id = (select tab.department_id
                                  from (select em.department_id, round(avg(em.salary),2) as avg_salary
                                        from hr.employees em
                                        group by em.department_id) tab
                                  where tab.avg_salary in (select max(tab.avg_salary)
                                                           from (select round(avg(em.salary),2) as avg_salary
                                                                 from hr.employees em
                                                                 group by em.department_id) tab))) as min_salary
from (select em.department_id, round(avg(em.salary),2) as avg_salary
      from hr.employees em
      group by em.department_id) tab
where tab.avg_salary in (select max(tab.avg_salary)
                         from (select round(avg(em.salary),2) as avg_salary
                               from hr.employees em
                               group by em.department_id) tab); 