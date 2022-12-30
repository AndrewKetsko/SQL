insert into m_andrew.departments (
department_id,
department_name,
block_id)
select 50,'Менеджмент',1
from dual
union
select 60,'Соціологія',1
from dual
union
select 70,'Історія',2
from dual
union
select 80,'Математика',2
from dual
union
select 90,'Філологія',3
from dual;

commit;