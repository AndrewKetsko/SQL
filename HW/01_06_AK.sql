select dep.department_name
from m_andrew.departments dep
where dep.department_id in (
                        select st.department_id --, count(*) as count
                        from m_andrew.students st
                        group by st.department_id
                        having count(*) >= 4);