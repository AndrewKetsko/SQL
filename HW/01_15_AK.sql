delete from m_andrew.students st
where st.rowid in (select max(rowid)
                    from m_andrew.students st
                    group by (st.student_id,
                            st.department_id,
                            st.teacher_id,
                            st.start_date,
                            st.full_name,
                            st.scholarship)
                    having count(*)>1
                    );
                    
commit;