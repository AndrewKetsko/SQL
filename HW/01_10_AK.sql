select dep.department_name
from m_andrew.departments dep
where exists ( select 1 
                from m_andrew.students st
                where st.department_id=dep.department_id);