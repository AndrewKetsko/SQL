select *
from hr.employees em
where em.manager_id in (select em.employee_id
                        from hr.employees em
                        where to_char(em.hire_date, 'yyyy')='2005');