insert into m_andrew.students (
student_id,
department_id,
teacher_id,
start_date,
full_name,
scholarship)
select 1, 50, 100, to_date('01.08.2019', 'dd.mm.yyyy'), 'Бєляєв Матвій Артемович', 700
from dual
union
select 2, 50, 100, to_date('22.08.2019', 'dd.mm.yyyy'), 'Блажевич Ігор Юрійович', 690
from dual
union
select 3, 50, 100, to_date('01.08.2019', 'dd.mm.yyyy'), 'Валієва Руфіна Рафаелівна', 690
from dual;

commit;

select *
from m_andrew.students st
group by (st.student_id,
        st.department_id,
        st.teacher_id,
        st.start_date,
        st.full_name,
        st.scholarship)
having count(*)>1;