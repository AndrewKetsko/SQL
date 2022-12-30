select *
from hr.employees em
where em.employee_id in (select distinct (em.manager_id)
                        from hr.employees em);
