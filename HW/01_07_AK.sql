select st.*
from (select st.department_id, max(st.scholarship) as scholarship
        from m_andrew.students st
        group by st.department_id) tt
join m_andrew.students st
on tt.scholarship=st.scholarship;





