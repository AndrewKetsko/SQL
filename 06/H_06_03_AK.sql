select *
from hr.employees em
where hire_date between TO_DATE('01/08/05', 'DD/MM/YY')
                    and TO_DATE('30/09/05', 'DD/MM/YY');
                    


select *
from hr.employees em
where hire_date between TO_DATE('01/08/05', 'DD/MM/YY')
and add_months(trunc(TO_DATE('01/08/05', 'DD/MM/YY'),'mm'),+2)-1/86400;