select sysdate, add_months(trunc(sysdate,'mm'),-1), trunc(sysdate,'mm') - 1/86400
from dual;

select *
from hr.sales s
where dt_operations between add_months(trunc(sysdate,'mm'),-1)
                            and trunc(sysdate,'mm') - 1/86400;