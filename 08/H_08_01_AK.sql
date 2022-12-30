select *
from hr.products p
union
select 110,'TEST11',10,100
from dual
union
select 120,'TEST12',10,100
from dual
union
select 130,'TEST13',10,100
from dual;