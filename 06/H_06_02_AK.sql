select *
from hr.employees em
where length(em.first_name)=(select max(length(em.first_name))
                            from hr.employees em);