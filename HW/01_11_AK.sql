select st.*, to_char(st.start_date, 'month') as month
from m_andrew.students st
where st.start_date between to_date('01/07/19', 'dd/mm/yy')
                    and to_date('31/07/19', 'dd/mm/yy');
