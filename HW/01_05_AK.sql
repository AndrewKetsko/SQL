select 
    st.student_id,
    dep.department_name,
    st.teacher_id,
    st.start_date,
    st.full_name,
    st.scholarship
from m_andrew.students st
join m_andrew.departments dep
on st.department_id = dep.department_id;
