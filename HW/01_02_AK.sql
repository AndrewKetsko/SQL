create table m_andrew.departments (
department_id number,
department_name varchar(100),
block_id number);

comment on column
m_andrew.departments.department_id is 'department ID';

comment on column
m_andrew.departments.department_name is 'department name';

comment on column
m_andrew.departments.block_id is 'block ID';