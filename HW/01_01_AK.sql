create table m_andrew.students (
student_id number,
department_id number,
teacher_id number,
start_date date,
full_name varchar2(100),
scholarship number);

comment on column 
m_andrew.students.student_id is 'students ID'; 

comment on column
m_andrew.students.department_id is 'department ID';

comment on column
m_andrew.students.teacher_id is 'teacher ID';

comment on column
m_andrew.students.start_date is 'start learning date';

comment on column
m_andrew.students.full_name is 'students full name';

comment on column
m_andrew.students.scholarship is 'students scholarship';